//
//  Location.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 09/04/24.
//

import Foundation

struct Location: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
