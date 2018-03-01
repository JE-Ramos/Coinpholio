//
//  GenericExtensions.swift
//  CoinPholio
//
//  Created by John Ernest Ramos on 01/03/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation

extension Int {
    func stringWithCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}

extension Double {
    func stringWithCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}
