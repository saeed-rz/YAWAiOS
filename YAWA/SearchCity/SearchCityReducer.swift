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
        var results: [GeoData] = []
    }

    enum Action: BindableAction {
        case binding(BindingAction<State>)
        case search(String)
        case searchResult([GeoData])
    }

    @Dependency(\.weatherAPI) var weatherAPI

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

                case .binding(_):
                    return .none
            }
        }
    }
}

extension GeoData: Identifiable {
    public var id: UUID {
        UUID()
    }

    var stateValue: String {
        state ?? ""
    }
}
