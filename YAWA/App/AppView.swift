//
//  AppView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import ComposableArchitecture
import SwiftUI

struct AppView: View {

    let store: StoreOf<AppReducer>

    var body: some View {
        NavigationStackStore(
            store.scope(state: \.path, action: \.path)
        ) {
            HomeView(
                store: store.scope(state: \.home, action: \.home)
            )
        } destination: { des in
            switch des {
                case .searchCity:
                    CaseLet(
                        \PathReducer.State.searchCity,
                         action: PathReducer.Action.searchCity) { store in
                             SearchCityView(store: store)
                         }
            }
        }
    }
}

#Preview {
    AppView(store: .init(initialState: .init()) {
        AppReducer()
    })
}
