//
//  Appetizer.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 02/09/25.
//

import Foundation
struct Appetizer: Decodable ,Identifiable {
    let id: Int
    let name: String
    let ingredients: [String]
    let instructions: [String]
    let prepTimeMinutes: Int
    let cookTimeMinutes: Int
    let servings: Int
    let difficulty: String
    let cuisine: String
    let caloriesPerServing: Int
    let tags: [String]
    let userId: Int
    let image: String
    let rating: Double
    let reviewCount: Int
    let mealType: [String]
}

struct AppetizerResponse: Decodable {
    let recipes: [Appetizer]
}
