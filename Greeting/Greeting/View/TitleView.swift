//
//  TitleView.swift
//  Greeting
//
//  Created by Zain Arshad on 31/05/2026.
//

import SwiftUI

struct TitleView: View {
    private let title: LocalizedStringKey = "Greetings"
    private let subTitles: [LocalizedStringKey] = [
        "A quest for knowledge", "Swift is awesome!", "Programming recipes", "Exploring iOS Programming",
        "Learn how to bake a cake!",
    ]
    @State private var subtitle:LocalizedStringKey = "A quest for knowledge"

    let lineWidth: CGFloat = 15
    let circleSize: CGFloat = 70

    @State private var isRotated: Bool = false
    var angle: Angle { isRotated ? .zero : .degrees(90) }
    var angularGradient = AngularGradient(
        colors: [.pink, .purple, .blue, .orange, .green, .red],
        center: .center,
        angle: .zero
    )

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(title).font(.largeTitle).fontWeight(.semibold)
                Text(subtitle).font(.headline).fontWeight(.thin)
            }.onTapGesture {
                subtitle = subTitles.randomElement() ?? LocalizedStringKey("A quest for knowledge")
            }
            Spacer()
            Circle().strokeBorder(
                angularGradient,
                lineWidth: lineWidth
            ).rotationEffect(angle).frame(width: circleSize, height: circleSize)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
}
