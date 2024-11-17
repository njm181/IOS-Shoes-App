//
//  ShortcutHorizontalCarousel.swift
//  Shoes-App
//
//  Created by Nico Molina on 28/10/2024.
//

import Foundation
import SwiftUI

struct ShortcutHorizontalCarousel: View {
    var body: some View {
        
        HStack(spacing: 16) {
            Shortcut(
                iconName: "tag",
                iconHexaColor: "#7d3ef5",
                iconSize: 30,
                shortcutBackgroundHexaColor: "#f0e9fd",
                width: 60,
                height: 60
            )
            Spacer()
            Shortcut(
                iconName: "percent",
                iconHexaColor: "#7d3ef5",
                iconSize: 30,
                shortcutBackgroundHexaColor: "#f0e9fd",
                width: 60,
                height: 60
            )
            Spacer()
            Shortcut(
                iconName: "location",
                iconHexaColor: "#7d3ef5",
                iconSize: 30,
                shortcutBackgroundHexaColor: "#f0e9fd",
                width: 60,
                height: 60
            )
            Spacer()
            Shortcut(
                iconName: "newspaper",
                iconHexaColor: "#7d3ef5",
                iconSize: 30,
                shortcutBackgroundHexaColor: "#f0e9fd",
                width: 60,
                height: 60
            )
        }
        .padding()
    }
}

#Preview {
    ShortcutHorizontalCarousel()
}
