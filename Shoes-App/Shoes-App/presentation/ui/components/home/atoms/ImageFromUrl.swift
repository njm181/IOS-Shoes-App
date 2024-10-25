//
//  ImageFromUrl.swift
//  Shoes-App
//
//  Created by Nico Molina on 24/10/2024.
//

import Foundation
import SwiftUI

struct ImageFromUrl: View {
    
    var width: CGFloat
    var height: CGFloat
    var cornerRadius: CGFloat
    var url: URL?
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
                    .clipped()
                    .cornerRadius(cornerRadius)
            case .failure:
                Image(systemName: "exclamationmark.triangle")
                    .foregroundColor(.red)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    ImageFromUrl(
        width: 180,
        height: 150,
        cornerRadius: 20,
        url: URL(string: "https://assets.adidas.com/images/w_600,f_auto,q_auto/f8bc2c70b30940a7acda118f6fdde902_9366/Zapatillas_Running_Switch_Run_Negro_IF5720_01_standard.jpg")
    )
}
