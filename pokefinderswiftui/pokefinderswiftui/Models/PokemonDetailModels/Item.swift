//
//  Item.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/30/24.
//

import Foundation

struct Item: Codable {
    let attributes: [Attribute]
    let babyTriggerFor: String?
    let category: Category
    
    enum CodingKeys: String, CodingKey {
        case attributes
        case babyTriggerFor = "baby_trigger_for"
        case category
    }
}
