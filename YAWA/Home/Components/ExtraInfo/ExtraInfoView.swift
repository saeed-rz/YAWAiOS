//
//  ExtraInfoView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 24/12/2023.
//

import SwiftUI

struct ExtraInfoView: View {
    private let columns = [GridItem](
        repeating: .init(.flexible(), spacing: 8),
        count: 3
    )
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 24) {
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
                InfoView(infoTitle: "Feels like", infoDetail: "25°C")
            }
            .padding(.vertical, 16)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(16)
    }
}

#Preview {
    ExtraInfoView()
}
