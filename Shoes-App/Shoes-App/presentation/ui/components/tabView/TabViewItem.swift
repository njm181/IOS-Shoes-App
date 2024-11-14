//
//  TabViewItem.swift
//  Shoes-App
//
//  Created by Nico Molina on 13/11/2024.
//

import Foundation
import SwiftUI

struct TabViewItem: View {
    
    enum FilterType {
        case none, contacted, uncontacted
    }
    
    let filter: FilterType
    
    var title: String {
        switch filter {
        case .none:
            "First"
        case .contacted:
            "Second"
        case .uncontacted:
            "Third"
        }
    }
    
    var body: some View {
        NavigationStack {
            Text("Naviation Stack TabViewItem")
                .navigationTitle(title)
        }
    }
}

#Preview {
    TabViewItem(filter: .none)
}
