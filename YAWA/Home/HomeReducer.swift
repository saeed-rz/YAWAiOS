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

    }

    enum Action {
        case task
    }

    @Dependency(\.weatherAPI) var weatherAPI
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
                case .task:
                    return .none
            }
        }
    }
}
