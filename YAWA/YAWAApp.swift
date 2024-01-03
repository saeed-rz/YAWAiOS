//
//  YAWAApp.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 10/12/2023.
//

import SwiftUI
import YAWAShared

@main
struct YAWAApp: App {
    var body: some Scene {
        WindowGroup {
            AppView(
                store: .init(initialState: .init()) {
                    AppReducer()
                } withDependencies: {
                    $0.weatherAPI = .live(service: OpenWeatherAPI())
                }
            )
        }
    }
}
