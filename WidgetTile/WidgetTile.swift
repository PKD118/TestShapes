//
//  WidgetTile.swift
//  WidgetTile
//
//  Created by Biduit on 5/7/25.
//

import SwiftUI
import WidgetKit

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(
        in context: Context,
        completion: @escaping (SimpleEntry) -> Void
    ) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(
        in context: Context,
        completion: @escaping (Timeline<Entry>) -> Void
    ) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0..<5 {
            let entryDate = Calendar.current.date(
                byAdding: .hour,
                value: hourOffset,
                to: currentDate
            )!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }

    //    func relevances() async -> WidgetRelevances<Void> {
    //        // Generate a list containing the contexts this widget is relevant in.
    //    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct WidgetTileEntryView: View {
    var entry: Provider.Entry

    var body: some View {
        VStack {

            GlowingCircleView()
                .frame(width: 60, height: 60)
                .offset(x: -95)

            HStack(spacing: -15) {
                TopLeftTile()
                TopRightTile()
            }
            HStack {
                
                
                BL1()
                    .frame(maxHeight: .infinity)
                    .frame(minWidth: 0)
                // Allow BL1 to take full height
                    .layoutPriority(1)
                    .offset(x:-6, y: -12 )// Prioritize BL1 to take available width
                BRR1()
                    .frame(maxHeight: .infinity)  // Allow BRR1 to take full height
                    .layoutPriority(1)
                    .offset(x : -15, y: -12)// Prioritize BRR1 to take available width
            }
            .frame(maxHeight: 170)

        }
        .padding()
        .background(Color.black)
    }
}

struct WidgetTile: Widget {
    let kind: String = "WidgetTile"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                WidgetTileEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                WidgetTileEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("SwiftUItest")
        .description("This is an example widget.")
        .supportedFamilies([.systemLarge,.systemMedium])
    }
}

#Preview(as: .systemLarge) {
    WidgetTile()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}
