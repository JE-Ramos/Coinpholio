//
//  PortfolioCellViewModel.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 21/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation

enum InvestmentType: String {
    case bought = "bought"
    case sold = "sold"
}

struct InvestmentCellViewModel {
    let fiat: Double
    let tradePrice: Double
    let crypto: Double
    let transactionDate: Date
}

extension InvestmentCellViewModel: InvestmentCellPresentable {
    var fiatText: String {
        return fiat.stringWithCommas()
    }
    
    var cryptoText: String {
        return String(format: "%0.8f", crypto)
    }
    
  
}

