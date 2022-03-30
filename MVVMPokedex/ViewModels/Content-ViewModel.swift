//
//  Content-ViewModel.swift
//  MVVMPokedex
//
//  Created by Federico on 30/03/2022.
//

import Foundation

extension ContentView {
    class ViewModel: ObservableObject {
        private let pokemonManager = PokemonManager()
        
        @Published var pokemonList = [Pokemon]()
        
        init() {
            self.pokemonList = pokemonManager.getPokemon()
        }
        
        func getPokemonIndex(pokemon: Pokemon) -> Int {
            
            if let index = self.pokemonList.firstIndex(of: pokemon) {
                return index + 1
            }
        
            return 0
        }
    }
}
