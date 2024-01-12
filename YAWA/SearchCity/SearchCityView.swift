//
//  SearchCityView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import ComposableArchitecture
import SwiftUI

struct SearchCityView: View {
    @Environment(\.dismiss) var dismiss

    let store: StoreOf<SearchCityReducer>
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            List {
                Section {
                    ForEach(viewStore.results, id: \.id) { city in
                        CityRowView(city: city)
                            .padding(.vertical, 16)
                            .onTapGesture {
                                viewStore.send(.cityTapped(city))
                                dismiss()
                            }
                    }
                } header: {
                    CityHeaderView()
                        .padding(.bottom, 16)
                }
            }
            .listStyle(.grouped)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .background(.colorBackground)
            .searchable(
                text: viewStore.$searchTerm,
                placement: .navigationBarDrawer(displayMode: .always),
                prompt: "Search City"
            )
        }
    }
}

#Preview {
    SearchCityView(store: .init(initialState: .init()) {
        SearchCityReducer()
    })
}
