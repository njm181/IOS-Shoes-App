//
//  SizeColumns.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct SizeColumns : View {

    private var data  = Array(1...10)
    private let adaptiveColumn = [
            GridItem(.adaptive(minimum: 60))
        ]
    
    var body: some View {
        LazyVGrid(columns: self.adaptiveColumn) {
            ForEach(data, id: \.self) { item in
                Text(String(item))
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(.white)
                    .foregroundColor(.black)
                    .font(.title2)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }
        }
    }
}

#Preview {
    SizeColumns()
}
