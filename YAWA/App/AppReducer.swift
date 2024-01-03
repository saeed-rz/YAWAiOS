//
//  AppReducer.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import ComposableArchitecture

@Reducer
struct AppReducer {
    
    struct State: Equatable {
        var path = StackState<PathReducer.State>()
        var home = HomeReducer.State()
    }

    enum Action {
        case path(StackAction<PathReducer.State, PathReducer.Action>)
        case home(HomeReducer.Action)
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
                .none
        }
        .forEach(\.path, action: \.path) {
            PathReducer()
        }

        Scope(state: \.home, action: \.home) {
            HomeReducer()
        }
    }
}
