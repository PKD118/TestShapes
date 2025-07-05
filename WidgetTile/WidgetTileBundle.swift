//
//  WidgetTileBundle.swift
//  WidgetTile
//
//  Created by Biduit on 5/7/25.
//

import WidgetKit
import SwiftUI

@main
struct WidgetTileBundle: WidgetBundle {
    var body: some Widget {
        WidgetTile()
        WidgetTileControl()
        WidgetTileLiveActivity()
    }
}
