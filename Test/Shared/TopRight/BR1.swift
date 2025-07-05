//
//  BR1.swift
//  Test
//
//  Created by Biduit on 4/7/25.
//

import SwiftUI

struct BR1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        //let cornerRadius = rect.width * 0.09

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        //        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
        //                          control: CGPoint(x: rect.maxX, y: rect.minY))

        path.addLine(to: CGPoint(x: rect.maxX, y: 0.52 * rect.maxY))
        //        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY - cornerRadius),
        //                          control: CGPoint(x: rect.minX, y: rect.maxY))

        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))

        //        path.addQuadCurve(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
        //                          control: CGPoint(x: rect.minX, y: rect.minY))

        return path

    }
}

#Preview {
    BR1()
}
