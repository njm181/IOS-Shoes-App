//
//  HomeMainCarouselk.swift
//  Shoes-App
//
//  Created by Nico Molina on 16/11/2024.
//

import Foundation
import SwiftUI

struct HomeMainCarousel : View {
    var body: some View {
        TabView {
            HomeMainCarouselCard(
                productTitle: "Product Title",
                productName: "Product Name 1",
                productUrl: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                buttonTitle: "Button title"
            )
            HomeMainCarouselCard(
                productTitle: "Product Title",
                productName: "Product Name 2",
                productUrl: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                buttonTitle: "Button title"
            )
            HomeMainCarouselCard(
                productTitle: "Product Title",
                productName: "Product Name 3",
                productUrl: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
                buttonTitle: "Button title"
            )
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(height: 235)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
    }
}

#Preview {
    HomeMainCarousel()
}
