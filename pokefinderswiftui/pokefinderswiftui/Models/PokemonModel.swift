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
    
    static func loadPokemon() -> [Pokemon] {
        let fileName = "pokemon.json"
        guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else { return [] }
        do {
            let data = try Data(contentsOf: url)
            let jsonDecoder = JSONDecoder()
            let pokemonPage = try jsonDecoder.decode(PokemonPage.self, from: data)
            return pokemonPage.results
        } catch {
            print(error)
        }
        return [Pokemon.samplePokemon]
    }
}

struct PokemonDetail: Codable {
    let abilities: [Ability]
    let baseExperience: Int
    let cries: Cries?
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
    let species: [Species]
    let sprites: [Sprite]
    let stats: [Stats]
    let types: [PokemonType]
    let weight: Float
}
