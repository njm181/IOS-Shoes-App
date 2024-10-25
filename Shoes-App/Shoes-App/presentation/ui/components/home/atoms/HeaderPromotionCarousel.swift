//
//  HeaderPromotionCarousel.swift
//  Shoes-App
//
//  Created by Nico Molina on 24/10/2024.
//

import Foundation
import SwiftUI

struct HeaderPromotionCarousel: View {
    
    var title: String
    var buttonTitle: String
    
    var body: some View {
        ZStack {
            HStack {
                Text(title)
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button(action: {}) {
                    Text(buttonTitle)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .foregroundColor(.white)
                        .background(Color(hex: "#8749fe"))
                        .cornerRadius(10)
                  }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HeaderPromotionCarousel(title: "New Arrivals", buttonTitle: "View All")
}
