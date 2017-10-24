//
//  Symbols.swift
//  BitAlert
//
//  Created by Marcus Klausen on 24/10/2017.
//  Copyright © 2017 Marcus Klausen. All rights reserved.
//

import Foundation

enum Ticker {
    case BTCUSD
    case ETHUSD
    case OMGUSD
    
    var apiCall: String {
        switch self {
        case .BTCUSD: return "tBTCUSD"
        case .ETHUSD: return "tETHUSD"
        case .OMGUSD: return "tOMGUSD"
        }
    }
    
    var name: String {
        switch self {
        case .BTCUSD: return "Bitcoin / US Dollar"
        case .ETHUSD: return "Ethereum / US Dollar"
        case .OMGUSD: return "OmiseGO / US Dollar"
        }
    }
}

extension Ticker {
    init?(apiCall: String) {
        switch apiCall {
        case "tBTCUSD": self = .BTCUSD
        case "tETHUSD": self = .ETHUSD
        case "tOMGUSD": self = .OMGUSD
        default: self = .BTCUSD
        }
    }
}

