//
//  WeatherAPI.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 26/12/2023.
//

import Foundation
import YAWAShared

struct WeatherAPI {

    var currentWeather: @Sendable (Double, Double) async throws -> WeatherData

    var searchCity: @Sendable (String) async throws -> [GeoData]

    init(
        currentWeather: @escaping @Sendable (Double, Double) async throws -> WeatherData,
        searchCity: @escaping @Sendable (String) async throws -> [GeoData]
    ) {
        self.currentWeather = currentWeather
        self.searchCity = searchCity
    }
}
