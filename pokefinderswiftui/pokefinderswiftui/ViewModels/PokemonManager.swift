//
//  PokemonManager.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/31/24.
//

import Foundation

class PokemonManager {
    func getPokemon() -> [Pokemon] {
        let data: PokemonPage = Bundle.main.decode(file: "pokemon.json")
        let pokemon: [Pokemon] = data.results
        
        return pokemon
    }
    
//    func getDetailedPokemon(id: Int) -> PokemonDetail {
//        Bundle.main.fetchData(url: "https://pokeapi.co/api/v2/pokemon/\(id)/", model: PokemonDetail.self) { data in
//          
//        } failure: { error in
//            print(error)
//        }
//    }
}
