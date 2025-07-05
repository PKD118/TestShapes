//
//  GlowingCircleView.swift
//  Test
//
//  Created by Biduit on 5/7/25.
//

//
//  Top.swift
//  Test
//
//  Created by Biduit on 5/7/25.
//
import SwiftUI

struct GlowingCircleView: View {
    var body: some View {
        Circle()
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [
                        Color(red: 1.0, green: 0.8, blue: 0.6),
                        Color(red: 0.9, green: 0.5, blue: 0.4),
                        Color(red: 0.7, green: 0.4, blue: 0.3),
                    ]),
                    center: .center,
                    startRadius: 0,
                    endRadius: 20
                )
            )

            .shadow(color: .black.opacity(0.9), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    GlowingCircleView()
}
