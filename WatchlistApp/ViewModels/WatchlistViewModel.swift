//
//  WatchlistViewModel.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import UIKit

class WatchlistViewModel {

    var onReceiveNewData: ((_ result : [Result]?, _ error: Bool) -> Void)?
    var onStockSearchResponse: ((_ success: Bool) -> Void)?

    var timer = Timer()
    let autoRefreshInterval = 15.0
    
    var allSymbols: String {
        get {
            guard let token = UserDefaults.standard.object(forKey: "allSymbols") as? String else {
                return ""
            }
            return token
        }
        set(value) {
            UserDefaults.standard.set(value, forKey: "allSymbols")
            UserDefaults.standard.synchronize()
        }
    }
    
    func startFetchingQuotesData() {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: autoRefreshInterval, target: self, selector: #selector(autoRefresh), userInfo: nil, repeats: true)
                
        let allSymbolsString = self.allSymbols.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        
        if RESTAPIManager.sharedInstance.connectedToNetwork()
        {
            RESTAPIManager.sharedInstance.createGetRequest(YahooFinanceQuotesAPI+allSymbolsString) { (error, responseData) in
                if error == nil
                {
                    guard let jsonData = responseData else {
                        return
                    }
                    
                    self.parseQuotesData(jsonData)
                }
                else
                {
                    self.onReceiveNewData?(nil, true)
                }
            }
        }
        else
        {
            self.onReceiveNewData?(nil, true)
        }
    }
    
    func searchWithSymbol(query: String) {
        let queryString = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!

        if RESTAPIManager.sharedInstance.connectedToNetwork()
        {
            RESTAPIManager.sharedInstance.createGetRequest(YahooFinanceQuotesAPI+queryString) { (error, responseData) in
                if error == nil
                {
                    guard let jsonData = responseData else {
                        return
                    }
                    
                    self.parseSearchData(jsonData)
                }
                else
                {
                    self.onStockSearchResponse?(false)
                }
            }
        }
        else
        {
            self.onStockSearchResponse?(false)
        }
    }
    
    func stopFetchingQuotesData() {
        self.timer.invalidate()
    }
    
    func deleteStockFromWatchlist(_ symbol: String) {
        self.allSymbols = self.allSymbols.replacingOccurrences(of: symbol, with: "")
    }
    
    func parseQuotesData(_ jsonData: Data) {
        let decoder = JSONDecoder()

        do {
            let yahooFinanceQuotesData = try decoder.decode(YFinanceQuotesData.self, from: jsonData)
            self.onReceiveNewData?(yahooFinanceQuotesData.quoteResponse?.result, false)
        } catch let error  {
            print("Parsing Failed \(error.localizedDescription)")
            self.onReceiveNewData?(nil, true)
        }
    }
    
    func parseSearchData(_ jsonData: Data) {
        let decoder = JSONDecoder()
        
        do {
            let yahooFinanceQuotesData = try decoder.decode(YFinanceQuotesData.self, from: jsonData)
            if let result = yahooFinanceQuotesData.quoteResponse?.result, result.count > 0
            {
                if let symbol = result[0].symbol
                {
                    self.allSymbols = symbol + "," + self.allSymbols
                    self.onStockSearchResponse?(true)
                    return
                }
                self.onStockSearchResponse?(false)
                return
            }
            self.onStockSearchResponse?(false)
        } catch let error  {
            print("Parsing Failed \(error.localizedDescription)")
            self.onStockSearchResponse?(false)
        }
    }
    
    @objc func autoRefresh() {
        self.startFetchingQuotesData()
    }
}
