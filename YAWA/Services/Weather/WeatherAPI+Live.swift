//
//  WeatherAPI+Live.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 26/12/2023.
//

import Foundation
import YAWAShared

extension WeatherAPI {
    static func live(service: OpenWeatherAPI) -> Self {
        .init { lat, lon in
            try await service.getCurrentWeatherData(lat: 0.0, lon: 0.0, appId: "952dec803825141ba000476601be600d")
        } searchCity: { searchTerm in
            try await service.searchCity(searchTerm: searchTerm, appId: "952dec803825141ba000476601be600d")
        }
    }
}
