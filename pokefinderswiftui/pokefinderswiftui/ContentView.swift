//
//  ContentView.swift
//  pokefinderswiftui
//
//  Created by Justin on 1/27/24.
//

import SwiftUI

struct ContentView: View {
    @State var pokemonName = ""
    @State var allPokemon = [Pokemon]()
    
    var body: some View {
        ScrollView {
            ForEach(0..<allPokemon.count, id: \.self) { index in
                Text(allPokemon[index].name.capitalized)
            }
        }
        .background(.green)
        .onAppear {
            allPokemon = Pokemon.loadPokemon()
        }
    }
}

#Preview {
    ContentView()
}
