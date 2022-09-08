//
//  GenreModel.swift
//  JSONParsing
//
//  Created by Ruslan Liulka on 08.09.2022.
//

import Foundation

// MARK: - Welcome
struct FilmType: Codable {
    let genres: [Genre]
}

// MARK: - Genre
struct Genre: Codable {
    let id: Int
    let name: String
}

