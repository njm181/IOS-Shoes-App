//
//  DetailProduct.swift
//  Shoes-App
//
//  Created by Nico Molina on 16/11/2024.
//

import Foundation
import SwiftUI

struct DetailProduct : View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("$150")
                        .font(.title2)
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .background(Color(hex: "#f5f5f5"))
                                .cornerRadius(10)
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .background(Color(hex: "#f5f5f5"))
                                .cornerRadius(10)
                        }
                    }
                }
                
                Spacer().frame(height: 4)
                
                Text("Adidas Extreme 2090")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200, alignment: .leading)
        .padding()
    }
}


#Preview {
    DetailProduct()
}
