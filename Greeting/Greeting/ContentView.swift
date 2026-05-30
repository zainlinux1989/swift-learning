//
//  ContentView.swift
//  Greeting
//
//  Created by Zain Arshad on 30/05/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(
                "Hello there!"
            )
            .fontWeight(
                .semibold
            )
            .padding()
            .foregroundStyle(
                .white
            ).background(.green.opacity(0.4)).cornerRadius(20.0).shadow(
                color: .green,
                radius: 5.0,
                x: 5,
                y: 5
            )

            Text(
                "Welcome to Swift Programming"
            )
            .fontWeight(
                .semibold
            )
            .padding()
            .foregroundStyle(
                .white
            ).background(.gray.opacity(0.4)).cornerRadius(20.0).shadow(
                color: .gray,
                radius: 5.0,
                x: 5,
                y: 5
            )

            Text(
                "Are you ready to,"
            )
            .fontWeight(
                .semibold
            )
            .padding()
            .foregroundStyle(
                .white
            ).background(.yellow.opacity(0.4)).cornerRadius(20.0).shadow(
                color: .yellow,
                radius: 5.0,
                x: 5,
                y: 5
            )
            
            Text(
                "Start Exploring?"
            )
            .fontWeight(
                .semibold
            )
            .padding()
            .foregroundStyle(
                .white
            ).background(.red.opacity(0.4)).cornerRadius(20.0).shadow(
                color: .red,
                radius: 5.0,
                x: 5,
                y: 5
            )
            
            Text(
                "Boom."
            )
            .fontWeight(
                .semibold
            )
            .padding()
            .foregroundStyle(
                .white
            ).background(.purple.opacity(0.4)).cornerRadius(20.0).shadow(
                color: .purple,
                radius: 5.0,
                x: 5,
                y: 5
            )
        }
    }
}

#Preview {
    ContentView()
}
