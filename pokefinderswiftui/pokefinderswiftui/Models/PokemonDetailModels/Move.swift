//
//  Move.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/29/24.
//

import Foundation

struct Move: Codable {
    let name: String
    let url: String
    let versionGroupDetails: [VersionGroupDetail]
}
