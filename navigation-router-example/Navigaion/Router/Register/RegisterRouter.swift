//
//  RegisterRouter.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

class RegisterRouter: ObservableObject, NavigationPathDelegate {
    
    @Published var path: NavigationPath
    
    init(path: NavigationPath = NavigationPath()) {
        self.path = path
    }
    
    func push<T>(to destination: T) where T : Hashable {
        path.append(destination)
    }
    
    func showScreen<T>(to destination: T) where T : Hashable {
        
    }
    
    func dismissScreen() {
        
    }
    
    func navigateBack() {
        path.removeLast()
    }
    
    func navigateBack(stackCount: Int) {
        path.removeLast(stackCount)
    }
    
    func navigateToRoot() {
        path.removeLast(path.count)
    }
}
