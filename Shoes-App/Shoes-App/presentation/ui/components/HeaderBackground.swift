//
//  HeaderBackground.swift
//  Shoes-App
//
//  Created by Nico Molina on 23/10/2024.
//

import Foundation
import SwiftUI

struct HeaderBackground: View {
    var body: some View {
        VStack {
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: 150,
            alignment: .top
        )
        .background(Color(hex: "#8749fe"))
        .cornerRadius(50, corners: [.bottomLeft, .bottomRight])
        
    }
}


#Preview {
    HeaderBackground()
}
