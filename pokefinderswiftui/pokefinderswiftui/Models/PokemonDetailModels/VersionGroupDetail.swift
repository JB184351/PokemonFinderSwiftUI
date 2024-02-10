//
//  VersionGroupDetail.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/30/24.
//

import Foundation

struct VersionGroupDetail: Codable {
    let levelLearnedAt: Int
    let moveLearnMethod: MoveLearnMethod
    
    enum CodingKeys: String, CodingKey {
        case levelLearnedAt = "level_learned_at"
        case moveLearnMethod = "move_learn_method"
    }
}
