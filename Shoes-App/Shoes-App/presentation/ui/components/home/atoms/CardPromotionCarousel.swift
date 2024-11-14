//
//  CardPromotionCarousel.swift
//  Shoes-App
//
//  Created by Nico Molina on 24/10/2024.
//

import Foundation
import SwiftUI

struct CardPromotionCarousel: View {
    
    var iconSize: CGFloat
    var imageWidth: CGFloat
    var imageHeight: CGFloat
    var cornerRadius: CGFloat
    var url: URL?
    var productName: String
    var productValue: String
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    ImageFromUrl(
                        width: imageWidth,
                        height: imageHeight,
                        cornerRadius: cornerRadius,
                        url: url
                    )
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "heart")
                                .font(.system(size: iconSize))
                                .padding()
                        }
                        Spacer()
                    }
                }
                .frame(width: imageWidth, height: imageHeight)
                
                VStack {
                    Text(productName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 16)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                }
                
                HStack {
                    Text(productValue)
                        .font(.subheadline)
                        .bold()
                    
                    Spacer()
                    
                    Image(systemName: "plus.app")
                        .font(.system(size: iconSize))
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            }
            .padding(.top)
            
        }
        .frame(width: 170, height: 300)
        .padding(2)
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    CardPromotionCarousel(
        iconSize: 30,
        imageWidth: 200,
        imageHeight: 230,
        cornerRadius: 20,
        url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg"),
        productName: "Nike Air Max 2090",
        productValue: "$150"
    )
}
