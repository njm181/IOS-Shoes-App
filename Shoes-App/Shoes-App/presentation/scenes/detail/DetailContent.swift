//
//  DetailContent.swift
//  Shoes-App
//
//  Created by Nico Molina on 16/11/2024.
//

import Foundation
import SwiftUI

struct DetailContent : View {
    var body: some View {
        ScrollView {
            DetailHeader()
                .frame(maxWidth: .infinity)
            
            Spacer().frame(height: 16)
            
            DetailProduct()
            
            Spacer().frame(height: 8)
            
            DetailProductOptions()
            
            Spacer().frame(height: 8)
            
            DetailProductSize()
            
            Spacer().frame(height: 8)
            
            DetailProductDescription()
            
            Spacer().frame(height: 8)
            
            DetailMarketButtons()
            
        }
        .ignoresSafeArea(edges: .top)

    }
}

#Preview {
    DetailContent()
}
