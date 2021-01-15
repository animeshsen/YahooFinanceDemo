//
//  RESTAPIManager.swift
//  WatchlistApp
//
//  Created by Sen, Animesh  on 14/01/21.
//  Copyright © 2021 Sen, Animesh . All rights reserved.
//

import UIKit
import SystemConfiguration

class RESTAPIManager: NSObject {
    private let urlSession = URLSession.shared
    var responseString : String?
    var content : String?
    
    static let sharedInstance: RESTAPIManager = {
        let instance = RESTAPIManager()
        return instance
    }()
    
    enum JSONError: String, Error {
        case NoData = "ERROR: no data"
        case ConversionFailed = "ERROR: conversion from JSON failed"
    }
    
    func createHeaders() -> [String : String]? {
        let headers =  [
            "x-rapidapi-key": RapidAPIKey,
            "x-rapidapi-host": RapidAPIHost
        ]
        return headers
    }
    
    func createGetRequest(_ apiURLString: String, completion: @escaping (_ error: Error?, _ response: Data?) -> Void) {
        
        guard let url = URL(string: apiURLString) else
        {
            let error = NSError(domain:"", code:0, userInfo:[ NSLocalizedDescriptionKey: "Invalid URL"])
            completion(error, nil)
            return
        }
        
        let request = NSMutableURLRequest(url: url as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = createHeaders()
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                completion(error, nil)
            } else {
                
                if let httpResponse = response as? HTTPURLResponse {
                    
                    if httpResponse.statusCode == HTTPStatusCodes.OK.rawValue {
                        /// success
                        print("success")
                        
                        /// get raw data
                        guard let extractedRawData = data else {
                            print("no raw data")
                            let error = NSError(domain:"", code:0, userInfo:[ NSLocalizedDescriptionKey: "No Data Received"])
                            completion(error, nil)
                            return
                        }
                        print("got data")
                        
                        completion(nil, extractedRawData)
                        
                    } else {
                        /// some status code unaccounted for
                        let error = NSError(domain:"", code:httpResponse.statusCode, userInfo:[ NSLocalizedDescriptionKey: "Unhandled Error"])
                        completion(error, nil)
                    }
                    
                }
                
            }
        })
        
        dataTask.resume()
    }
    

    func connectedToNetwork() -> Bool {
        
        var zeroAddress = sockaddr_in()
        zeroAddress.sin_len = UInt8(MemoryLayout<sockaddr_in>.size)
        zeroAddress.sin_family = sa_family_t(AF_INET)
        
        guard let defaultRouteReachability = withUnsafePointer(to: &zeroAddress, {
            $0.withMemoryRebound(to: sockaddr.self, capacity: 1) {
                SCNetworkReachabilityCreateWithAddress(nil, $0)
            }
        }) else {
            return false
        }
        
        var flags: SCNetworkReachabilityFlags = []
        if !SCNetworkReachabilityGetFlags(defaultRouteReachability, &flags) {
            return false
        }
        
        let isReachable = flags.contains(.reachable)
        let needsConnection = flags.contains(.connectionRequired)
        
        return (isReachable && !needsConnection)
    }
}
