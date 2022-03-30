//
//  PokemonManager.swift
//  MVVMPokedex
//
//  Created by Federico on 30/03/2022.
//

import Foundation

class PokemonManager {
    func getPokemon() -> [Pokemon] {
        let data: PokemonPage = Bundle.main.decode(file:"pokemon.json")
        let pokemon: [Pokemon] = data.results
        
        return pokemon
    }
}

