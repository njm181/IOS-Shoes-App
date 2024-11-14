//
//  HomeMainCarouselCard.swift
//  Shoes-App
//
//  Created by Nico Molina on 23/10/2024.
//

import Foundation
import SwiftUI

struct HomeMainCarouselCard: View {
    
    var productTitle: String
    var productName: String
    var productUrl: URL?
    var buttonTitle: String
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                
                ImageFromUrl(
                    width: 180,
                    height: 150,
                    cornerRadius: 20,
                    url: productUrl
                )
                
                VStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(productTitle)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                        Text(productName)
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .font(.title2)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    
                    Spacer()

                    VStack {
                        Button(action: {}) {
                            Text(buttonTitle)
                                .padding(.vertical, 8)
                                .padding(.horizontal, 16)
                                .foregroundColor(.white)
                                .background(.black)
                                .cornerRadius(10)
                          }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 10)
                }
                .frame(maxWidth: .infinity, maxHeight: 150, alignment: .leading)
                
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: 200
            )
            .padding()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: 250
        )
        .background(.white)
        .clipShape(RoundedCorner(radius: 20))
        .padding()
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
        
    }
}


#Preview {
    HomeMainCarouselCard(
        productTitle: "Introducing",
        productName: "Air Max 2090",
        productUrl: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
        buttonTitle: "Buy Now"
    )
}

