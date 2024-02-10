//
//  Stats.swift
//  pokefinderswiftui
//
//  Created by Justin on 2/9/24.
//

import Foundation

struct Stats: Codable {
    let baseStat: Int
    let effort: Int
    let stat: Stat
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
}
