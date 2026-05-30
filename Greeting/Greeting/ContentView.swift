//
//  ContentView.swift
//  Greeting
//
//  Created by Zain Arshad on 30/05/2026.
//

import SwiftUI

struct DataItemModel{
    let text: String
    let color: Color
}

struct ContentView: View {
    let messages: [DataItemModel] = [
        DataItemModel(text: "Hello there!", color: .green),
        DataItemModel(text:  "Welcome to Swift Programming", color: .gray),
        DataItemModel(text: "Are you ready to,", color: .yellow),
        DataItemModel(text: "Start Exploring?", color: .red),
        DataItemModel(text:  "Boom.", color: .purple)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: messages[0].text, color: messages[0].color)
            TextView(text:  messages[1].text, color: messages[1].color)
            TextView(text: messages[2].text, color: messages[2].color)
            TextView(text: messages[3].text, color: messages[3].color)
            TextView(text: messages[4].text, color: messages[4].color)
        }
    }
}

#Preview {
    ContentView()
}
