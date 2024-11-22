//
//  SizeColumns.swift
//  Shoes-App
//
//  Created by Nico Molina on 17/11/2024.
//

import Foundation
import SwiftUI

struct SizeColumns : View {

    @State private var selectedItem: Int?
    
    private var data  = Array(1...10)
    private let adaptiveColumn = [
            GridItem(.adaptive(minimum: 60))
        ]
    
    var body: some View {
        LazyVGrid(columns: self.adaptiveColumn) {
            ForEach(data, id: \.self) { item in
                Button(action: {
                    selectedItem = item
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedItem == item ? Color.black : Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 2)
                            )

                        Text(String(item))
                            .foregroundColor(selectedItem == item ? .white : .black)
                            .font(.title2)
                    }
                    .frame(width: 60, height: 60)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

#Preview {
    SizeColumns()
}
