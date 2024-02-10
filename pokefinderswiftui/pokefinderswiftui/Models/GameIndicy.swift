//
//  GameIndicy.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/29/24.
//

import Foundation

struct GameIndicy: Codable {
    let gameIndex: Int
    let version: Version
    
    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }
}
