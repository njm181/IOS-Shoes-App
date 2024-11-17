//
//  DetailMarketButtons.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct DetailMarketButtons : View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Text("Add to Cart")
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .foregroundColor(.black)
                    .font(.title3)
                    .bold()
                    .background(Color(hex: "#f5f5f5"))
                    .cornerRadius(10)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Buy Now")
                    .frame(maxWidth: .infinity, maxHeight: 70)
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                    .background(Color(hex: "#8749fe"))
                    .cornerRadius(10)
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 90)
    }
}

#Preview {
    DetailMarketButtons()
}
