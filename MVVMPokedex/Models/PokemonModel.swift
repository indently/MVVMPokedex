//
//  PokemonModel.swift
//  MVVMPokedex
//
//  Created by Federico on 30/03/2022.
//

import Foundation


struct PokemonPage: Codable {
    let count: Int
    let next: String
    let results: [Pokemon]
}

struct Pokemon: Codable, Identifiable, Equatable {
    let id = UUID()
    let name: String
    let url: String
}

