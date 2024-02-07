//
//  PokemonModel.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/29/24.
//

import Foundation

struct PokemonPage: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Pokemon]
}

struct Pokemon: Codable, Equatable {
    let name: String
    let url: String
    
    static var samplePokemon = Pokemon(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")
}

struct PokemonDetail: Codable {
    let abilities: [Ability]
    let baseExperience: Int
    let forms: [Form]
    let gameIndicies: [GameIndicy]
    let height: Float
    let heldItems: [HeldItem]
    let id: Int
    let isDefault: Bool
    let locationAreaEncounters: String
    let moves: [Move]
    let name: String
    let order: Int
    let pastAbilities: [Ability]
            let pastTypes: [PokemonType]
//            let species: [Species]
    //        let sprites: [Sprite]
    //        let stats: Stats
    //        let types: [PokemonTypes]
    let weight: Float
}
