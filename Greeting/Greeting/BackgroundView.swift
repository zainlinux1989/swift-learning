//
//  BackgroundView.swift
//  Greeting
//
//  Created by Zain Arshad on 31/05/2026.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.appBlue1, .appBlue2]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ).opacity(1).ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
