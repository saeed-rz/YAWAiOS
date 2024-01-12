//
//  WeatherAPI_Test.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 26/12/2023.
//

import Dependencies
import Foundation

extension WeatherAPI: TestDependencyKey {

    static let testValue = Self(
        currentWeather: unimplemented("\(Self.self).currentWeather"),
        searchCity: unimplemented("\(Self.self).searchCity")
    )
}
