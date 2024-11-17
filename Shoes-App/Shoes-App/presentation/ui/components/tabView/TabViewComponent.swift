//
//  TabViewComponent.swift
//  Shoes-App
//
//  Created by Nico Molina on 13/11/2024.
//

import Foundation
import SwiftUI

struct TabViewComponent: View {
    
    var body: some View {
        TabView {
            NavigationStack(){
                HomeScene()
            }
            .tabItem {
                Text("Home")
                Image(systemName: "house.fill")
                    .renderingMode(.template)
            }
            .tag(0)
            
            NavigationStack() {
                Text("Cart view")
                    .navigationTitle("Cart title")
            }
            .tabItem {
                Label("Cart", systemImage: "cart.fill")
            }
            .tag(1)
            
            NavigationStack() {
                Text("Message view")
                    .navigationTitle("Message title")
                
            }
            .tabItem {
                Text("Message")
                Image(systemName: "message.fill")
            }
            .tag(2)
                    
            NavigationStack() {
                Text("User view")
                    .navigationTitle("User Profile title")
                
            }
            .tabItem {
                Text("User")
                Image(systemName: "person.fill")
            }
            .tag(3)
        }
    }
}

#Preview {
    TabViewComponent()
}

