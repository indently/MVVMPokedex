//
//  ContentView.swift
//  MVVMPokedex
//
//  Created by Federico on 30/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                    ForEach(vm.pokemonList) { pokemon in
                        NavigationLink(destination: PokemonDetailView(pokemon: pokemon)
                        ) {
                            PokemonView(name: pokemon.name.capitalized, pokemonID: vm.getPokemonIndex(pokemon: pokemon))    
                        }
                    }
                }
                .navigationTitle("PokeUI")
            }
        }
        .environmentObject(vm)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
