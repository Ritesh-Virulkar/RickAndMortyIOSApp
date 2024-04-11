//
//  CharacterStatus.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import Foundation

enum CharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown" // putting backticks to remove confusion for xcode if some issue occurs
}
