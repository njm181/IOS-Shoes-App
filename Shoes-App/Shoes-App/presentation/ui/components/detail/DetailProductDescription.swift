//
//  DetailProductDescription.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct DetailProductDescription : View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Description")
                    .font(.title3)
                    .bold()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer().frame(height: 16)
            
            Text("Description description description description description description description description description description description description description description description description description")
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}

#Preview {
    DetailProductDescription()
}
