//
//  Dependencies.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 26/12/2023.
//

import Dependencies
import Foundation

extension DependencyValues {
    var weatherAPI: WeatherAPI {
        get { self[WeatherAPI.self] }
        set { self[WeatherAPI.self] = newValue }
    }
}
