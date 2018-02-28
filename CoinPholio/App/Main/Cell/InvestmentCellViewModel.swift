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

extension InvestmentCellViewModel: InvestmentPresentable {
    var fiatTitle: String {
        return String(fiat)
    }
    
    var cryptoTitle: String {
        return String(crypto)
    }
    
  
}

