//
//  BRR1.swift
//  Test
//
//  Created by Biduit on 5/7/25.
//

import SwiftUI

struct BRR1: View {
    var body: some View {
        GeometryReader { geometry in
            let scaleFactor = geometry.size.width / 250

            ZStack {

                HStack(spacing: 08) {

                    RoundedRectangle(cornerRadius: 7)
                        .fill(Color(hex: "#E16A54"))
                        .frame(width: 90, height: 172)

                    RoundedRectangle(cornerRadius: 7)
                        .fill(Color(hex: "#F39E60"))
                        .frame(width: 200, height: 95)
                        .offset(x: -3, y: 40)

                }

                Circle()
                    .fill(Color(hex: "#FCDB88"))
                    .overlay(Circle().stroke(Color.black, lineWidth: 7))
                    .frame(width: 80, height: 80)
                    .offset(x: -42, y: 5)

                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(hex: "#FCDB88"))
                    .frame(width: 200, height: 75)
                    .offset(x: 46, y: -50)

            }
            .scaleEffect(scaleFactor)
            .frame(width: geometry.size.width, height: geometry.size.height)

        }

    }

}

#Preview {
    BRR1()
}
