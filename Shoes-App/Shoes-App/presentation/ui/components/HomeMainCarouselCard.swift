//
//  HomeMainCarouselCard.swift
//  Shoes-App
//
//  Created by Nico Molina on 23/10/2024.
//

import Foundation
import SwiftUI

struct HomeMainCarouselCard: View {
    let url = URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 180, height: 150)
                            .clipped()
                            .cornerRadius(20)
                    case .failure:
                        Image(systemName: "exclamationmark.triangle")
                            .foregroundColor(.red)
                    @unknown default:
                        EmptyView()
                    }
                }
                
                VStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Introducing")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                        Text("Air Max 2090")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                            .font(.title2)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 10)
                    
                    Spacer()

                    VStack {
                        Button(action: {}) {
                            Text("Buy now")
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
        .background(.gray)
        .clipShape(RoundedCorner(radius: 20))
        .padding()
        .shadow(color: .gray, radius: 5, x: 0, y: 2)
        
    }
}


#Preview {
    HomeMainCarouselCard()
}

