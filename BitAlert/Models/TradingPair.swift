//
//  symbol.swift
//  BitAlert
//
//  Created by Marcus Klausen on 24/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

class TradingPair {
    let ticker: Ticker
    let bid: Float
    let bidSize: Float
    let ask: Float
    let askSize: Float
    let dailyChange: Float
    let dailyChangePercent: Float
    let lastPrice: Float
    let volume: Float
    let high: Float
    let low: Float

    init(ticker: Ticker, bid: Float, bidSize: Float, ask: Float, askSize: Float, dailyChange: Float, dailyChangePercent: Float, lastPrice: Float, volume: Float, high: Float, low: Float) {
        self.ticker = ticker
        self.bid = bid
        self.bidSize = bidSize
        self.ask = ask
        self.askSize = ask
        self.dailyChange = dailyChange
        self.dailyChangePercent = dailyChangePercent
        self.lastPrice = lastPrice
        self.low = low
        self.high = high
        self.volume = volume
    }
}

extension TradingPair {
    convenience init?(json: [Any]) {
        
        // do we have data? Bitfinex responses are all strings, so no downcasting here.
        guard   let ticker = json[0] as? Ticker,
                let bid = json[1] as? Float,
                let bidSize = json[2] as? Float,
                let ask = json[3] as? Float,
                let askSize = json[4] as? Float,
                let dailyChange = json[5] as? Float,
                let dailyChangePercent = json[6] as? Float,
                let lastPrice = json[7] as? Float,
                let volume = json[8] as? Float,
                let high = json[9] as? Float,
                let low = json[10] as? Float
        else { return nil }
        
        self.init(ticker: ticker, bid: bid, bidSize: bidSize, ask: ask, askSize: askSize, dailyChange: dailyChange, dailyChangePercent: dailyChangePercent, lastPrice: lastPrice, volume: volume, high: high, low: low)
    }
}
