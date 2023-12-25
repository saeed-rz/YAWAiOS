//
//  InfoView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 24/12/2023.
//

import SwiftUI

struct InfoView: View {
    let infoTitle: String
    let infoDetail: String
    let icon: Image = Image(systemName: "humidity")

    var body: some View {
        VStack(spacing: 4) {
            icon
            Text(infoTitle)
                .font(.system(size: 14))
                .foregroundStyle(.black.opacity(0.6))
            Text(infoDetail)
                .font(.system(size: 20))
        }
    }
}

#Preview {
    InfoView(infoTitle: "UV Index", infoDetail: "7 High")
}
