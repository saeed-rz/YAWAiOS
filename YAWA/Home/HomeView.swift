//
//  HomeView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 24/12/2023.
//

import ComposableArchitecture
import SwiftUI

struct HomeView: View {

    let store: StoreOf<HomeReducer>

    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack {
                TodayView(city: "Munich", temp: "25°C", date: "25/12/2023")
                ExtraInfoView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                LinearGradient(
                    colors: [
                        Color(red: 0.18, green: 0.35, blue: 0.96),
                        Color(red: 0.06, green: 0.63, blue: 0.67)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
            .ignoresSafeArea()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        state: PathReducer.State.searchCity(.init())
                    ) {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.white)
                    }
                }
            }
            .task {
                viewStore.send(.task)
            }
        }
    }
}

#Preview {
    HomeView(store: .init(initialState: .init()) {
        HomeReducer()
    })
}
