//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Roshal Sebastian on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var textTitle = "What is you name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text:$name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
            .padding(30)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
