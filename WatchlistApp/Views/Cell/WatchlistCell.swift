//
//  WatchlistCell.swift
//  WatchlistApp
//
//  Created by Sen, Animesh on 14/01/21.
//  Copyright © 2021 Sen, Animesh. All rights reserved.
//

import UIKit

class WatchlistCell: UITableViewCell {

    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var shortNameLabel: UILabel!
    @IBOutlet weak var regularMarketPriceLabel: UILabel!
    @IBOutlet weak var marketChangeLabel: UILabel!
    @IBOutlet weak var postMarketChangeLabel: UILabel!
    @IBOutlet weak var postHeadingLabel: UILabel!
    @IBOutlet weak var changeView: UIView!

    var modeToggle: (() -> Void)?
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func initialize(result: Result, mode: Mode)  {
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(toggle))
        self.changeView.addGestureRecognizer(tapGesture)
        
        self.symbolLabel.text = result.symbol
        self.shortNameLabel.text = result.shortName
        if let regularMarketPrice = result.regularMarketPrice
        {
            self.regularMarketPriceLabel.text = regularMarketPrice.returnStringUnformattedRoundedTwoTwoDecimalPlaces()
        }
        
        if mode == .percent
        {
            self.setUpPercentData(result: result)
        }
        else
        {
            self.setUpPriceData(result: result)
        }
        
    }
    
    func setUpPercentData(result: Result) {
        if let regularMarketChangePercent = result.regularMarketChangePercent
        {
            self.marketChangeLabel.text = regularMarketChangePercent.returnStringUnformattedRoundedTwoTwoDecimalPlaces() + "%"
            
            (regularMarketChangePercent > 0) ? self.changeView.setGreenColor() : self.changeView.setRedColor()

        }
        
        if let postMarketChangePercent = result.postMarketChangePercent
        {
            self.postMarketChangeLabel.text = postMarketChangePercent.returnStringUnformattedRoundedTwoTwoDecimalPlaces() + "%"
            
            (postMarketChangePercent > 0) ? self.postMarketChangeLabel.greenColor() : self.postMarketChangeLabel.redColor()
            if postMarketChangePercent == 0 {
                self.postMarketChangeLabel.isHidden = true
                self.postHeadingLabel.isHidden = true
            }
        }
        
    }
    
    func setUpPriceData(result: Result) {
        if let regularMarketChange = result.regularMarketChange
        {
            self.marketChangeLabel.text = regularMarketChange.returnStringUnformattedRoundedTwoTwoDecimalPlaces()
            
            (regularMarketChange > 0) ? self.changeView.setGreenColor() : self.changeView.setRedColor()

        }
        
        if let postMarketChange = result.postMarketChange
        {
            self.postMarketChangeLabel.text = postMarketChange.returnStringUnformattedRoundedTwoTwoDecimalPlaces()
            
            (postMarketChange > 0) ? self.postMarketChangeLabel.greenColor() : self.postMarketChangeLabel.redColor()
            if postMarketChange == 0 {
                self.postMarketChangeLabel.isHidden = true
                self.postHeadingLabel.isHidden = true
            }
        }
    }
    
    @objc func toggle() {
        self.modeToggle?()
    }

}
