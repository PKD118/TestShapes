import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                GlowingCircleView()
                    .frame(width: 80, height: 80)
                HStack(spacing: 0) {
                    TopLeftTile()
                        .frame(
                            width: geometry.size.width / 2,
                            height: geometry.size.height
                        )

                    TopRightTile()
                        .frame(
                            width: geometry.size.width / 2,
                            height: geometry.size.height
                        )
                }
                .background(Color.black)

            }

        }
    }
}

#Preview {
    ContentView()
}
