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
                HomeContent()
            }
            .tabItem {
                Text("tabItem Home view")
                Image(systemName: "house.fill")
                    .renderingMode(.template)
            }
            .tag(0)
            
            NavigationStack() {
                Text("Profile view")
                    .navigationTitle("Profile")
            }
            .tabItem {
                Label("tabItem Profile", systemImage: "person.fill")
            }
            .tag(1)
            
            NavigationStack() {
                Text("About view")
                    .navigationTitle("About")
                
            }
            .tabItem {
                Text("tabItem About view")
                Image(systemName: "info.circle")
            }
            .badge("12")
            .tag(2)
            /*TabViewItem(filter: .none)
                .tabItem {
                    Label("Option 1", systemImage: "person.3")
                }
            
            TabViewItem(filter: .contacted)
                .tabItem {
                    Label("Option 2", systemImage: "checkmark.circle")
                }
            
            TabViewItem(filter: .uncontacted)
                .tabItem {
                    Label("Option 3", systemImage: "questionmark.diamond")
                }*/
        }
    }
}

#Preview {
    TabViewComponent()
}

