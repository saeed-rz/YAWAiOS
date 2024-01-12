//
//  CityRowView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 28/12/2023.
//

import YAWAShared
import SwiftUI

struct CityRowView: View {

    let city: City

    var body: some View {
        GeometryReader { geometry in
            let columnWidth = geometry.size.width / 3
            HStack {
                Group {
                    Text(city.name)
                    Text(city.country)
                    Text(city.state ?? "-")
                }
                .frame(width: columnWidth, alignment: .leading)
                .multilineTextAlignment(.center)
                .lineLimit(1)
            }
        }
    }
}

#Preview {
    CityRowView(city:
            .init(name: "Munich", lat: 0.0, lon: 0.0, country: "DE", state: "Bavaria")
    )
}
