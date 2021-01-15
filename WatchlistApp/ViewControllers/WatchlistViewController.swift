//
//  WatchlistViewController.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import UIKit

enum Mode: String
{
    case price = "price"
    case percent = "percent"
}

class WatchlistViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var watchlistViewModel: WatchlistViewModel?
    var result = [Result]()
    var currentMode = Mode.percent
    let loaderView = LoaderView()
    let indicator: UIActivityIndicatorView = UIActivityIndicatorView(style: .medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = TITLE
        
        self.watchlistViewModel = WatchlistViewModel()
        self.watchlistViewModel?.onReceiveNewData = { (result, error) in
            DispatchQueue.main.async {
                self.indicator.stopAnimating()
                if !error, let extractedResult = result
                {
                    self.result = extractedResult

                    self.tableView.reloadData()
                }
                else
                {
                    self.displayError(SERVER_ERROR_MSG)
                }
            }
        }
        
        self.fetchData()
        
        self.navigationController?.navigationBar.isHidden = false
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewStockForLookup))
        self.navigationItem.rightBarButtonItem = addButton
        
        self.indicator.hidesWhenStopped = true
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: self.indicator)

        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appMovedToForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.didEnterBackgroundNotification, object: nil)

    }
    
    func fetchData()  {
        if !self.watchlistViewModel!.allSymbols.replacingOccurrences(of: ",", with: "").isEmpty
        {
            self.indicator.startAnimating()
            self.watchlistViewModel?.startFetchingQuotesData()
        }
    }
    
    @objc func appMovedToForeground() {
       self.fetchData()
    }
    
    @objc func appMovedToBackground() {
        self.watchlistViewModel?.stopFetchingQuotesData()
    }
    
    func displayError(_ message: String) {
        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: OK, style: .default) { (void) in
    
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @objc func addNewStockForLookup() {
        let ac = UIAlertController(title: nil, message: ADD_STOCK, preferredStyle: .alert)
        ac.addTextField { (textField) in
            textField.placeholder = ADD_STOCK_PLACEHOLDER
        }
        
        let saveAction = UIAlertAction(title: ADD, style: .default, handler: { (action) in
            let textField = ac.textFields![0] as UITextField
            
            guard let text = textField.text else {
                ac.dismiss(animated: false, completion: nil)
                return
            }
            
            guard text != "" else {
                ac.dismiss(animated: false, completion: nil)
                return
            }
            
            self.watchlistViewModel?.onStockSearchResponse = {(success) in
                DispatchQueue.main.async {
                    self.loaderView.hide()
                    if success
                    {
                        self.fetchData()
                    }
                    else
                    {
                        self.displayError(STOCK_ADDTION_FAILED_ERROR)
                    }
                }
            }
            
            if !text.isEmpty
            {
                self.loaderView.display(inView: self.view)
                self.watchlistViewModel?.searchWithSymbol(query: text)
            }
            
        })
        
        ac.addAction(saveAction)
        
        let cancelAction = UIAlertAction(title: CANCEL, style: .default) { (alert) in
            ac.dismiss(animated: false, completion: nil)
        }
        
        ac.addAction(cancelAction)
        
        self.present(ac, animated: true, completion: nil)
    }
    
}

extension WatchlistViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WatchlistCell", for: indexPath) as! WatchlistCell
        cell.initialize(result: result[indexPath.row], mode: currentMode)
        
        cell.modeToggle = {
            if self.currentMode == .percent
            {
                self.currentMode = .price
            }
            else
            {
                self.currentMode = .percent
            }
            self.tableView.reloadData()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let symbol = result[indexPath.row].symbol
            {
                watchlistViewModel?.deleteStockFromWatchlist(symbol)
                self.result.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    }
    
}
