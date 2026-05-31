//
//  MessageView.swift
//  Greeting
//
//  Created by Zain Arshad on 31/05/2026.
//

import SwiftUI

struct MessageView: View {

    let messages: [DataItemModel] = [
        DataItemModel(text: "Hello there!", color: Color.newAppGreen),
        DataItemModel(text: "Welcome to Swift Programming", color: Color.newAppGray),
        DataItemModel(text: "Are you ready to,", color: Color.newAppYellow),
        DataItemModel(text: "Start Exploring?", color: Color.newAppRed),
        DataItemModel(text: "Boom.", color: Color.newAppPurple),
    ]

    var body: some View {
        ForEach(messages) { message in
            TextView(text: message.text, color: message.color)
        }
    }
}

#Preview {
    MessageView()
}
