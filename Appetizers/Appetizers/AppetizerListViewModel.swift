//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Lucas  Alcantara  on 07/11/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                        case .invalidResponse:
                            alertItem = AlertContext.invalidResponse
                            
                        case .invalidURL:
                            alertItem = AlertContext.invalidURL
                            
                        case .invalidData:
                            alertItem = AlertContext.invalidData
                            
                        case .unableToComplete:
                            alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

