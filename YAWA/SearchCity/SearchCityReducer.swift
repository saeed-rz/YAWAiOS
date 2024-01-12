//
//  SearchCityReducer.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import ComposableArchitecture
import YAWAShared

@Reducer
struct SearchCityReducer {
    
    struct State: Equatable {
        @BindingState var searchTerm = ""
        var results: [City] = []
    }

    enum Action: BindableAction {
        case binding(BindingAction<State>)
        case search(String)
        case searchResult([City])
        case cityTapped(City)
    }

    @Dependency(\.weatherAPI) var weatherAPI
    @Dependency(\.userDefaultsManager.userDefaults) var userDefaults

    var body: some ReducerOf<Self> {
        BindingReducer()
            .onChange(of: \.searchTerm) { oldValue, newValue in
                Reduce { _, _ in
                    return .send(.search(newValue))
                }
            }
        Reduce { state, action in
            switch action {
                case let .search(searchTerm):
                    return .run { @MainActor send in
                        let geoData = try await weatherAPI.searchCity(searchTerm)
                        send(.searchResult(geoData))
                    }

                case let .searchResult(data):
                    state.results = data
                    return .none

                case let .cityTapped(city):
                    if let cityData = try? PropertyListEncoder().encode(city) {
                        userDefaults.set(cityData, forKey: UserDefaultsKey.selectedCityKey)
                    }
                    return .none

                case .binding(_):
                    return .none
            }
        }
    }
}
