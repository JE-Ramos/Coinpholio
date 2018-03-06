//
//  CPPriceChecker.swift
//  CoinPholio
//
//  Created by John Ernest Ramos on 06/03/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation

protocol CPPriceCheckerDelegate {
    func didFailFetching(error: Error)
    func didUpdateMarket(market: CPMarket)
}

struct CPPriceChecker {
    
    var market: CPMarket?
    
    private var delegate: CPPriceCheckerDelegate?
    
    private static let url = URL(string: "https://quote.coins.ph/v1/markets/BTC-PHP")!
    private static let genericUrl = URL(string: "https://quote.coins.ph/v1/markets")!
    
    func subscribe(delegate: CPPriceCheckerDelegate) {
        fetchMarketData()
    }
    
    private func fetchMarketData() {
        //        var market: Market
        URLSession.shared.dataTask(with: CPPriceChecker.url, completionHandler: { (data, response, error) in
            guard error == nil else {
                return print("❌ unable to fetch market data: \(error!)")
            }
            
            guard let data = data else {
                return print("❌ nothing to parse, data is nil")
            }
            
            guard let market = try? JSONDecoder().decode(CPMarket.self, from: data) else {
                return print("❌ unable to parse, data is not a valid JSON")
            }
            self.delegate?.didUpdateMarket(market: market)
            print("response: \(market)")
            
            
        }).resume()
    }
    
    
}
