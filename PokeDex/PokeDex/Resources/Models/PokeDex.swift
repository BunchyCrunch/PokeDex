//
//  PokeDex.swift
//  PokeDex
//
//  Created by Josh Sparks on 10/1/19.
//  Copyright © 2019 Josh Sparks. All rights reserved.
//

import Foundation

struct PokeDex: Decodable { //Top level dictionary
    
    private enum CodingKeys: String, CodingKey {
        case abilities
        case name
        case id
        case spriteDict = "sprites"
        
    }
    
    let id: Int
    let name: String
    var abilities: [AbilityDict]
    var spriteDict: SpriteDict
}

struct AbilityDict: Decodable {
    let ability: Ability
    
    struct Ability: Decodable {
        let name: String
    }
}



struct SpriteDict: Decodable {
    private enum CodingKeys: String, CodingKey {
        case image = "front_shiny"
    }
    let image: URL
}
