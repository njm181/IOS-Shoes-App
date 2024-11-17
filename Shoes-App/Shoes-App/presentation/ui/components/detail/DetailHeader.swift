//
//  DetailHeader.swift
//  Shoes-App
//
//  Created by Nico Molina on 16/11/2024.
//

import Foundation
import SwiftUI

struct DetailHeader : View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderBackground(
                height: 200,
                backgroundColor: "#8749fe",
                cornerRadius: 30
            )
            
            VStack {
                ImageFromUrl(
                    width: 350,
                    height: 300,
                    cornerRadius: 16,
                    url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
                )
                .padding(.top, 24)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    DetailHeader()
}
