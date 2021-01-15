//
//  Decimal+Extension.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import Foundation

extension Float {
   
    func returnStringUnformattedRoundedTwoTwoDecimalPlaces() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.decimalSeparator = "."
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.usesGroupingSeparator = false
        return formatter.string(for: self) ?? ""
    }
    
    
}

