//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Lucas  Alcantara  on 04/11/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
                List(MockData.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                    
                }
                .navigationTitle("🍔 Appetizers")
            
        }
    }
}

#Preview {
    AppetizerListView()
}
