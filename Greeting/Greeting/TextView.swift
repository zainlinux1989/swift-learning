//
//  TextView.swift
//  Greeting
//
//  Created by Zain Arshad on 31/05/2026.
//

import SwiftUI

struct TextView: View {
    var text: String
    var color: Color
    
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
        ).background(color.opacity(0.4)).cornerRadius(20).shadow(
            color: color.opacity(0.5),
            radius: 5,
            x: 10,
            y: 10
        )
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 20){
        TextView(text: "Hello World", color: .red)
        TextView(text: "123", color: .red)
        TextView(text: "Hello", color: .red)
    }
}
