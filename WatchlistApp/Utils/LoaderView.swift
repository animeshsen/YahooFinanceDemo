//
//  LoaderView.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import UIKit

class LoaderView: NSObject {
    
    var view: UIView?
    let indicator: UIActivityIndicatorView = UIActivityIndicatorView(style: .large)
    
    override init() {
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view?.alpha = 0.5
        
        
        indicator.center = self.view!.center
        self.view!.addSubview(indicator)
        self.view!.bringSubviewToFront(indicator)
        
    }
    
    func display(inView: UIView) {
        inView.addSubview(self.view!)
        inView.bringSubviewToFront(self.view!)
        self.indicator.startAnimating()
    }
    
    func hide() {
        self.indicator.stopAnimating()
        self.view?.removeFromSuperview()
    }
}
