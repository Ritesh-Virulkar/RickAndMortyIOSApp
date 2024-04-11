 //
//  Episode.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 09/04/24.
//

import Foundation

struct Episode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
