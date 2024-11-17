//
//  HeaderBackground.swift
//  Shoes-App
//
//  Created by Nico Molina on 23/10/2024.
//

import Foundation
import SwiftUI

struct HeaderBackground: View {
    
    var height: CGFloat
    var backgroundColor: String
    var cornerRadius: CGFloat
    var corners: UIRectCorner = [.bottomLeft, .bottomRight]
    var title: String?
    
    
    var body: some View {
        VStack {
            Text(title ?? "")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .font(.title)
        }
        .frame(maxWidth: .infinity)
        .frame(height: height)
        .background(Color(hex: backgroundColor))
        .cornerRadius(
            cornerRadius,
            corners: corners
        )
    }
}


#Preview {
    HeaderBackground(
        height: 150,
        backgroundColor: "#8749fe",
        cornerRadius: 50,
        corners: [.bottomLeft, .bottomRight],
        title: "Shoes-App"
    )
}
