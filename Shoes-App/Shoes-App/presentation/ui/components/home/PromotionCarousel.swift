//
//  PromotionCarousel.swift
//  Shoes-App
//
//  Created by Nico Molina on 24/10/2024.
//

import Foundation
import SwiftUI

struct PromotionCarousel: View {
    
    var body: some View {
        VStack {
            HeaderPromotionCarousel(
                title: "New Arrivals",
                buttonTitle: "View All"
            )
            
            Spacer().frame(height: 24)
            
            ScrollView(.horizontal) {
               HStack(spacing: 16) {
                   CardPromotionCarousel(
                       iconSize: 20,
                       imageWidth: 150,
                       imageHeight: 180,
                       cornerRadius: 20,
                       url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                       productName: "Nike Air Max 2090",
                       productValue: "$150"
                   )
                   
                   CardPromotionCarousel(
                       iconSize: 20,
                       imageWidth: 150,
                       imageHeight: 180,
                       cornerRadius: 20,
                       url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                       productName: "Nike Air Max 2090",
                       productValue: "$150"
                   )

                   CardPromotionCarousel(
                       iconSize: 20,
                       imageWidth: 150,
                       imageHeight: 180,
                       cornerRadius: 20,
                       url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                       productName: "Nike Air Max 2090",
                       productValue: "$150"
                   )
               }
               .padding(.top, 10)
            }
            .scrollIndicators(.hidden)
        }
        .padding()
        .background(Color(hex: "#f5f5f5"))
        .cornerRadius(30, corners: [.topLeft, .topRight])
        
    }
}

#Preview {
    PromotionCarousel()
}
