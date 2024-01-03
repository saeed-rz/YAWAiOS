//
//  CityHeaderView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 02/01/2024.
//

import SwiftUI

struct CityHeaderView: View {
    var body: some View {
        GeometryReader { geometry in
            let columnWidth = geometry.size.width / 3
            HStack {
                Group {
                    Text("search_header_location_title")
                    Text("search_header_country_title")
                    Text("search_header_state_title")
                }
                .frame(width: columnWidth, alignment: .leading)
            }
        }
    }
}

#Preview {
    CityHeaderView()
}
