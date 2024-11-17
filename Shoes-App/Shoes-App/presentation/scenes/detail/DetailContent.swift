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
            
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    DetailContent()
}
