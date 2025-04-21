//
//  ContentView.swift
//  Demo
//
//  Created by Chen Hai Teng on 4/21/25.
//

import SwiftUI
import CoreGraphicsExtension

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
