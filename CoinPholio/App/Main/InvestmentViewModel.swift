//
//  PortfolioViewModel.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 20/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

struct InvestmentViewModel {
    private var cellModels: [InvestmentCellViewModel]
    
    var totalNetCost: Double {
        return cellModels.reduce(0.0) { $0 + $1.fiat }
    }
    
    init(cellModels: [InvestmentCellViewModel]) {
        self.cellModels = [
            
            InvestmentCellViewModel(fiat: 1000000, tradePrice: 200000, crypto: 0.12345789, transactionDate: Date()),
            InvestmentCellViewModel(fiat: 100000, tradePrice: 200000, crypto: 0.00001, transactionDate: Date()),
            InvestmentCellViewModel(fiat: 10000, tradePrice: 200000, crypto: 0.00001, transactionDate: Date()),
            InvestmentCellViewModel(fiat: 1000, tradePrice: 200000, crypto: 0.00001, transactionDate: Date()),
            InvestmentCellViewModel(fiat: 100, tradePrice: 200000, crypto: 0.00001, transactionDate: Date()),
            InvestmentCellViewModel(fiat: 10, tradePrice: 200000, crypto: 0.00001, transactionDate: Date()),
        ]
    }
    
}

// MARK: - Cell Models Convenience methods
extension InvestmentViewModel {
    
    func numberOfItems(in section: Int) -> Int {
        return cellModels.count
    }
    
    func cellModelFor(item: Int) -> InvestmentCellViewModel {
        return cellModels[item]
    }
}

extension InvestmentViewModel: InvestmentPresentable {
    var netCostText: String {
        return totalNetCost.stringWithCommas()
    }
    
    
}
