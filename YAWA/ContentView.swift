//
//  ContentView.swift
//  YAWA
//
//  Created by Saeid Rezaeisadrabadi on 10/12/2023.
//

import SwiftUI
import YAWAShared

struct ContentView: View {
    var greeting = Greeting()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! \(greeting.greet())")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
