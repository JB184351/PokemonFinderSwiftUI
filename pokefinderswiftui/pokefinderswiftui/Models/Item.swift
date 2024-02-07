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
}
