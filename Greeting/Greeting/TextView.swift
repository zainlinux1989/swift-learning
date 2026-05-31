//
//  TextView.swift
//  Greeting
//
//  Created by Zain Arshad on 31/05/2026.
//

import SwiftUI

struct TextView: View {
    var text: String
    @State var color: Color
    var colors: [Color] = [
        .red, .green, .purple, .orange, .yellow, .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
    ]

    var body: some View {
        Text(
            text
        )
        .fontWeight(
            .semibold
        )
        .padding()
        .foregroundStyle(
            .white
        ).background(color.opacity(0.5)).cornerRadius(20).shadow(
            color: color.opacity(0.5),
            radius: 5,
            x: 10,
            y: 10
        ).onTapGesture {
            let tempColor = color
            // Randomly change color.
            color = colors.randomElement() ?? .red
            Timer.scheduledTimer(
                withTimeInterval: 0.3,
                repeats: false,
                block: { _ in
                    color = tempColor
                }
            )
        }
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 20) {
        TextView(text: "Hello World", color: .blue)
        TextView(text: "123", color: .blue)
        TextView(text: "Hello", color: .blue)
    }
}
