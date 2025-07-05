//
//  TopLeftTile.swift
//  Test
//
//  Created by Biduit on 4/7/25.
//

import SwiftUI

struct TopLeftTile: View {
    var body: some View {
        GeometryReader { geometry in
            let scaleFactor = geometry.size.width / 250
            ZStack(alignment: .bottom) {

                TopLeftTileup()
                    .fill(Color(hex: "#F39E60"))
                    .frame(width: 200, height: 80)
                    .offset(x: -10, y: -40)
                    .padding()

                TopLeftTilebottom()
                    .fill(Color(hex: "#7C444F"))
                    .frame(width: 200, height: 80)
                    .offset(x: -10, y: 30)
            }
            .scaleEffect(scaleFactor)
            .frame(width: geometry.size.width, height: geometry.size.height)

        }
    }
}

#Preview {
    TopLeftTile()
}
