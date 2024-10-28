//
//  Shortcut.swift
//  Shoes-App
//
//  Created by Nico Molina on 24/10/2024.
//

import Foundation
import SwiftUI

struct Shortcut: View {
    
    var iconName: String
    var iconHexaColor: String
    var iconSize: CGFloat
    var shortcutBackgroundHexaColor: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .font(.system(size: iconSize))
                .foregroundColor(Color(hex: iconHexaColor))
        }
        .frame(width: width, height: height)
        .background(Color(hex: shortcutBackgroundHexaColor))
        .cornerRadius(10)
    }
}

#Preview {
    Shortcut(
        iconName: "tag",
        iconHexaColor: "#7d3ef5",
        iconSize: 20,
        shortcutBackgroundHexaColor: "#f0e9fd",
        width: 50,
        height: 50
    )
}
