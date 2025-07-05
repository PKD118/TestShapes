//
//  WidgetTileLiveActivity.swift
//  WidgetTile
//
//  Created by Biduit on 5/7/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct WidgetTileAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct WidgetTileLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: WidgetTileAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension WidgetTileAttributes {
    fileprivate static var preview: WidgetTileAttributes {
        WidgetTileAttributes(name: "World")
    }
}

extension WidgetTileAttributes.ContentState {
    fileprivate static var smiley: WidgetTileAttributes.ContentState {
        WidgetTileAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: WidgetTileAttributes.ContentState {
         WidgetTileAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: WidgetTileAttributes.preview) {
   WidgetTileLiveActivity()
} contentStates: {
    WidgetTileAttributes.ContentState.smiley
    WidgetTileAttributes.ContentState.starEyes
}
