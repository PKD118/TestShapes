//
//  TopLeftTile2nd.swift
//  Test
//
//  Created by Biduit on 4/7/25.
//
import SwiftUI

struct TopLeftTilebottom: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let cornerRadius = rect.width * 0.05
        let leftBumpX = rect.midX - rect.width * 0.22
        let rightBumpX = rect.midX + rect.width * 0.22
        let bumpDepth = rect.height * 0.55

        path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
        path.addLine(to: CGPoint(x: leftBumpX, y: rect.minY))
        path.addCurve(
            to: CGPoint(x: rightBumpX, y: rect.minY),
            control1: CGPoint(
                x: rect.midX - rect.width * 0.1,
                y: rect.minY + bumpDepth
            ),
            control2: CGPoint(
                x: rect.midX + rect.width * 0.1,
                y: rect.minY + bumpDepth
            )
        )
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
        path.addLine(to: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY))
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

        return path

    }
}

#Preview {
    TopLeftTilebottom()
}
