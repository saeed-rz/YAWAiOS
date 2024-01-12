//
//  HomeReducer.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 26/12/2023.
//

import ComposableArchitecture
import Foundation
import YAWAShared

@Reducer
struct HomeReducer {
    
    struct State: Equatable {
        var selectedCity: City?
    }

    enum Action {
        case task
    }

    @Dependency(\.userDefaultsManager.userDefaults) var userDefaults
    @Dependency(\.weatherAPI) var weatherAPI

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .task:
                    if 
                        let selectedCityData = userDefaults.object(forKey: UserDefaultsKey.selectedCityKey) as? Data,
                        let selectedCity = try? PropertyListDecoder().decode(City.self, from: selectedCityData)
                    {
                        state.selectedCity = selectedCity
                        print(selectedCity.name)
                    }
                    return .none
            }
        }
    }
}
