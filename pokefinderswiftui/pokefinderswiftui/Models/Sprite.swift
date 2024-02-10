//
//  Sprite.swift
//  pokefinderswiftui
//
//  Created by Justin on 2/7/24.
//

import Foundation

struct Sprite: Codable {
    let backDefault: String
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String
    let frontFemale: String?
    let frontShiny: String
    let frontShinyFemale: String?
    let other: OtherSprite?
    let home: HomeSprite?
    let officialArtwork: OfficialArtwork?
    let showDown: Showdown?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_Female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_shiny_female"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontShinyFemale = "front_shiny_female"
        case other
        case home
        case officialArtwork = "official_artwork"
        case showDown = "showdown"
    }
}

struct OtherSprite: Codable {
    let dreamWorld: DreamWorld
}

struct DreamWorld: Codable {
    let frontDefault: String
    let frontFemale: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
    }
}

struct HomeSprite: Codable {
    let frontDefault: String
    let frontFemale: String?
    let frontShiny: String
    let frontFemaleShiny: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontFemaleShiny = "front_female_shiny"
    }
}

struct OfficialArtwork: Codable {
    let frontDefault: String
    let frontShiny: String
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}

struct Showdown: Codable {
    let backDefault: String
    let backFemale: String?
    let backShiny: String
    let backShinyFemale: String?
    let frontDefault: String
    let frontFemale: String?
    let frontShiny: String
    let frontFemaleShiny: String?
    
    enum CodingKeys: String, CodingKey {
        case backDefault = "back_default"
        case backFemale = "back_female"
        case backShiny = "back_shiny"
        case backShinyFemale = "back_female_shiny"
        case frontDefault = "front_default"
        case frontFemale = "front_female"
        case frontShiny = "front_shiny"
        case frontFemaleShiny = "front_female_shiny"
    }
}
