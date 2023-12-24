//
//  CityView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 24/12/2023.
//

import Kingfisher
import SwiftUI

struct TodayView: View {
    var city: String
    var temp: String
    var date: String

    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            KFImage(URL(string: "https://openweathermap.org/img/wn/10d@4x.png"))
                .frame(width: 120, height: 120)
            Text(city)
                .font(.system(size: 22))
                .bold()
            Text(temp)
                .font(.system(size: 94))
                .bold()
            Text(date)
                .font(.system(size: 16))
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    TodayView(city: "Munchen", temp: "25°C", date: "23/12/2023")
}
