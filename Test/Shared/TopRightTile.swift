//
//  BottomRightTile.swift
//  Test
//
//  Created by Biduit on 4/7/25.
//

import SwiftUI

struct TopRightTile: View {
    var body: some View {
        GeometryReader { geometry in
            let scaleFactor = geometry.size.width / 250

            ZStack(alignment: .bottom) {
                BR1()
                    .fill(Color(hex: "#E16A54"))
                    .mask(RoundedRectangle(cornerRadius: 7))
                    .frame(width: 100, height: 160)
                    .offset(x: -75)

                BR2()
                    .fill(Color(hex: "#F39E60"))
                    .mask(RoundedRectangle(cornerRadius: 7))
                    .frame(width: 239, height: 70)
                    .offset(x: -2, y: 7)

                Rectangle()
                    .fill(Color(hex: "#7C444F"))
                    .mask(RoundedRectangle(cornerRadius: 7))
                    .frame(width: 135, height: 87)
                    .offset(x: 50, y: -72)

                Circle()
                    .fill(Color(hex: "#FCDB88"))
                    .overlay(Circle().stroke(Color.black, lineWidth: 7))
                    .frame(width: 90, height: 90)
                    .offset(x: -20, y: -30)
            }
            .scaleEffect(scaleFactor)
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
#Preview {
    TopRightTile()
}
