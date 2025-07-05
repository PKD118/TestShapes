//
//  BR2.swift
//  Test
//
//  Created by Biduit on 4/7/25.
//

import SwiftUI

struct BR2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: 0.40 * rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        //        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
        //                          control: CGPoint(x: rect.maxX, y: rect.minY))

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        //        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - cornerRadius),
        //                          control: CGPoint(x: rect.minX, y: rect.maxY))

        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0.40 * rect.maxX, y: rect.minY))

        //        path.addQuadCurve(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
        //                          control: CGPoint(x: rect.minX, y: rect.minY))

        return path

    }
}

#Preview {
    BR2()
}
