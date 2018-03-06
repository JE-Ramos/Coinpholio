//
//  Market.swift
//  Coinbot
//
//  Created by John Ernest Ramos on 20/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation


/// Structure for the market price of Coins.PH
/// Sample market data:
/// {"market":{"symbol":"BTC-PHP","currency":"PHP","product":"BTC","bid":"586068","ask":"606893","expires_in_seconds":19}}
struct CPMarket: Decodable {
    let symbol: String
    let currency: String
    let product: String
    let bid: Double
    let ask: Double
    let expiresInSeconds: Int
    
    fileprivate enum ContainerKeys:String, CodingKey {
        case market = "market"
    }
    
    fileprivate enum Keys: String, CodingKey {
        case symbol
        case currency
        case product
        case bid
        case ask
        case expiresInSeconds = "expires_in_seconds"
    }
    
    
    init(from decoder: Decoder) throws {
        let marketContainer = try decoder.container(keyedBy: ContainerKeys.self)
        
        let container = try marketContainer.nestedContainer(keyedBy: Keys.self, forKey: .market)
        self.symbol = try container.decode(String.self, forKey: .symbol)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.product = try container.decode(String.self, forKey: .product)
        
        //parse bid and ask since they are strings
        let stringBid = try container.decode(String.self, forKey: .bid)
        self.bid = Double(stringBid)!
        
        let stringAsk = try container.decode(String.self, forKey: .ask)
        self.ask = Double(stringAsk)!
        
        self.expiresInSeconds = try container.decode(Int.self, forKey: .expiresInSeconds)
    }
    
}
