//
//  DetailProductOptions.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct DetailProductOptions : View {
    var body: some View {
        HStack(spacing: 16) {
            ImageFromUrl(
                width: 100,
                height: 80,
                cornerRadius: 15,
                url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
            )
            
            ImageFromUrl(
                width: 100,
                height: 80,
                cornerRadius: 15,
                url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
            )
            
            ImageFromUrl(
                width: 100,
                height: 80,
                cornerRadius: 15,
                url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
            )
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DetailProductOptions()
}
