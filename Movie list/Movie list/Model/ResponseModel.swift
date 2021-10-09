//
//  ResponseModel.swift
//  Movie list
//
//  Created by Doyoon Lee on 2021/10/09.
//

import Foundation

// MARK: - MovieResponse
struct MovieResponse: Codable {
    let status: String?
    let statusMessage: String?
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let movieCount: Int?
    let limit: Int?
    let movies: [Movie]?
}

// MARK: - Movie
struct Movie: Codable {
    let title: String?
    let rating: Double?
}
