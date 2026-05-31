//
//  ContentView.swift
//  Greeting
//
//  Created by Zain Arshad on 30/05/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessageView()
                Spacer()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
