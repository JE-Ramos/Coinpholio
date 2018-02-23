//
//  PortfolioViewModel.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 20/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import UIKit

class InvestmentViewModel {
    var cellModels: [Investment]
    
    init(cellModels: [Investment]) {
        self.cellModels = [
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
            Investment(type:.bought , fiat:1000 , crypto:0.00012345 , tradePrice: 400000.00),
            Investment(type:.bought , fiat:2000 , crypto:0.00023456 , tradePrice: 999999.00),
            Investment(type:.sold , fiat:3000 , crypto:0.00034567 , tradePrice: 500000.00),
        ]
    }
}
