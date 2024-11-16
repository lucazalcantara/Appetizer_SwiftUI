//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Lucas  Alcantara  on 04/11/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
