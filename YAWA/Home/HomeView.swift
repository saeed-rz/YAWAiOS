//
//  HomeView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 24/12/2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchTerm: String = ""

    var body: some View {
        NavigationStack {
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
            // TODO: Implement search API
//            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always))
        }
    }
}

#Preview {
    HomeView()
}
