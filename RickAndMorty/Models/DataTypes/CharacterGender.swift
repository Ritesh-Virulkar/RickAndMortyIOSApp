//
//  CharacterGender.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import Foundation

enum CharacterGender: String, Codable {
//    ('Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
