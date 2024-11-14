//
//  HomeContent.swift
//  Shoes-App
//
//  Created by Nico Molina on 27/10/2024.
//

import Foundation
import SwiftUI

struct HomeContent: View {
    var body: some View {

        ScrollView {
            HomeHeaderMainCarousel()
                .frame(maxWidth: .infinity)
            
            Spacer().frame(height: 4)
            
            ShortcutHorizontalCarousel()
            
            Spacer().frame(height: 16)
            
            PromotionCarousel()
            
        }
        .ignoresSafeArea(edges: .top)
        
    }
}

#Preview {
    HomeContent()
}
