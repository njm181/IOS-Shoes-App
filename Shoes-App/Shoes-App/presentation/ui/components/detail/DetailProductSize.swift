//
//  DetailProductSize.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct DetailProductSize : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Select Size")
                .font(.title3)
                .bold()
            
            Spacer().frame(height: 16)
            
            SizeColumns()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}


#Preview {
    DetailProductSize()
}
