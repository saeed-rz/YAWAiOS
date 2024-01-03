//
//  PathReducer.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import ComposableArchitecture

@Reducer
struct PathReducer {
    enum State: Equatable {
        case searchCity(SearchCityReducer.State)
    }

    enum Action {
        case searchCity(SearchCityReducer.Action)
    }

    var body: some Reducer<State, Action> {
        Scope(state: \.searchCity, action: \.searchCity) {
            SearchCityReducer()
        }
    }
}
