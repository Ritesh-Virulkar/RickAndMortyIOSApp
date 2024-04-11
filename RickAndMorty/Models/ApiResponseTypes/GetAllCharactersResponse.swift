//
//  GetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 10/04/24.
//

import Foundation

struct GetAllCharactersResponse: Codable {
    let info: Info
    let results: [Character]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
