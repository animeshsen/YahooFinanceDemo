//  UIView+Extension.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        
        set {
            layer.borderWidth = newValue
        }
    }
    
    func setRedColor() {
        self.backgroundColor = .red
    }
    
    func setGreenColor() {
        self.backgroundColor = .systemGreen
    }
}
