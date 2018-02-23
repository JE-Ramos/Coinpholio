//
//  MarketTests.swift
//  CoinbotTests
//
//  Created by John Ernest Ramos on 20/02/2018.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import XCTest
@testable import Coinbot

class MarketTests: XCTestCase {
    
    let jsonData = """
        {   "market":   {
                            "symbol":"BTC-PHP",
                            "currency":"PHP",
                            "product":"BTC",
                            "bid":"586068",
                            "ask":"606893",
                            "expires_in_seconds":19
                        }
        }
    """.data(using: .utf8)
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testMarketDecoding() {
        guard let market = try? JSONDecoder().decode(Market.self, from: jsonData!) else {
            XCTFail("Failed to decode")
            return
        }
        
        XCTAssertEqual(market.symbol, "BTC-PHP")
        XCTAssertEqual(market.currency, "PHP")
        XCTAssertEqual(market.product, "BTC")
        XCTAssertEqual(market.bid, 586068)
        XCTAssertEqual(market.ask, 606893)
        XCTAssertEqual(market.expiresInSeconds, 19)
        
    }
    
}
