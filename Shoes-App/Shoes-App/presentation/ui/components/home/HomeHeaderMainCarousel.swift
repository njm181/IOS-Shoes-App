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
                
                HomeMainCarousel()
                    .frame(maxWidth: .infinity)
                    .padding(.top, 16)
                
            }
        }
    }
}


#Preview {
    HomeHeaderMainCarousel()
}
