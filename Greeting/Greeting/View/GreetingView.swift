//
//  ContentView.swift
//  Greeting
//
//  Created by Zain Arshad on 30/05/2026.
//

import SwiftUI

struct GreetingView: View {
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
    GreetingView()
}
