//
//  ContentView.swift
//  Appetizers
//
//  Created by Lucas  Alcantara  on 04/11/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag.fill")
                    Text("Order")
                }
        }
        .accentColor(.brandColorPrimary)
        
    }
}

#Preview {
    AppetizerTabView()
}
