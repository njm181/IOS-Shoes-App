//
//  HomeHeaderMainCarousel.swift
//  Shoes-App
//
//  Created by Nico Molina on 28/10/2024.
//

import Foundation
import SwiftUI

struct HomeHeaderMainCarousel: View {
    
    
    var body: some View {
        ZStack(alignment: .top) {
            HeaderBackground(
                height: 200,
                backgroundColor: "#8749fe",
                cornerRadius: 30,
                title: "Shoes-App"
            )
            
            VStack {
                Spacer().frame(height: 100)
                
                HomeMainCarouselCard(
                    productTitle: "Product Title",
                    productName: "Product Name",
                    productUrl: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                    buttonTitle: "Button title"
                )
                .padding(.top, 16)
            }
        }
    }
}


#Preview {
    HomeHeaderMainCarousel()
}
