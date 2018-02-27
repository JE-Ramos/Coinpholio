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

struct Investment {
    
    let type: InvestmentType
    let fiat: Double
    let crypto: Double
    let tradePrice: Double
    
}

