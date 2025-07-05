//
//  BRR2.swift
//  Test
//
//  Created by Biduit on 5/7/25.
//

import SwiftUI

struct BottomLeft1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let cornerRadius = rect.width * 0.05
        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY))

        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
            control: CGPoint(x: rect.maxX, y: rect.minY)
        )

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))

        path.addQuadCurve(
            to: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.maxY)
        )
        path.addLine(to: CGPoint(x: 0.5 * rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0.3 * rect.maxX, y: 0.7 * rect.maxY))
        path.addLine(
            to: CGPoint(x: rect.minX + cornerRadius, y: 0.7 * rect.maxY)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.minX, y: 0.7 * rect.maxY - cornerRadius),
            control: CGPoint(x: rect.minX, y: 0.7 * rect.maxY)
        )
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
        path.addQuadCurve(
            to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.minY)
        )

        return path

    }
}

struct BottomLeft2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        let cornerRadius = rect.width * 0.05
        path.move(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))

        path.addQuadCurve(
            to: CGPoint(x: rect.minX, y: rect.maxY - cornerRadius),
            control: CGPoint(x: rect.minX, y: rect.maxY)
        )

        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))

        path.addQuadCurve(
            to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.minY)
        )
        path.addLine(to: CGPoint(x: 0.3 * rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: 0.5 * rect.maxX, y: 0.3 * rect.maxY))
        path.addLine(
            to: CGPoint(x: rect.maxX - cornerRadius, y: 0.3 * rect.maxY)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: 0.3 * rect.maxY + cornerRadius),
            control: CGPoint(x: rect.maxX, y: 0.3 * rect.maxY)
        )
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY - cornerRadius))
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY),
            control: CGPoint(x: rect.maxX, y: rect.maxY)
        )

        return path

    }
}

struct BL1: View {
    var body: some View {
        GeometryReader { geometry in
            let scaleFactor = geometry.size.width / 250

            VStack(spacing: -18) {

                BottomLeft1()
                    .fill(Color(hex: "#F39E60"))
                    .frame(width: 185, height: 95)

                BottomLeft2()
                    .fill(Color(hex: "#7C444F"))
                    .frame(width: 185, height: 95)

            }
            .scaleEffect(scaleFactor)
            .frame(width: geometry.size.width, height: geometry.size.height)

        }

    }

}

#Preview {
    BL1()
}
