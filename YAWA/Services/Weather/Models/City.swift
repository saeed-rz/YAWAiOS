//
//  City.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 11/01/2024.
//

import Foundation

struct City: Codable, Equatable, Identifiable {
    var id = UUID()
    let name: String
    let lat: Double
    let lon: Double
    let country: String
    let state: String?
}
