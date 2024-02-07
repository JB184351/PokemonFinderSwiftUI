//
//  ContentView.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    @State var pokemonName = ""
    @State var pokemonURL = ""
    @State var allPokemon = [Pokemon]()
    
    var body: some View {
        ScrollView {
            ForEach(0..<allPokemon.count, id: \.self) { index in
                Text(allPokemon[index].name.capitalized)
            }
        }
        .background(.green)
        .onAppear {
            allPokemon = loadPokemon()
        }
    }
    
    private func loadPokemon() -> [Pokemon] {
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

#Preview {
    ContentView()
}
