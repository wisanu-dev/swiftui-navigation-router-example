//
//  LandingRouter.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

class LandingRouter: ObservableObject, NavigationPathDelegate {
    
    @Published var path: NavigationPath
    @Published var screenDestination: LandingDestination?
    
    init(path: NavigationPath = NavigationPath()) {
        self.path = path
    }
    
    func push<T>(to destination: T) where T : Hashable {
        path.append(destination)
    }
    
    func showScreen<T>(to destination: T) where T : Hashable {
        screenDestination = destination as? LandingDestination
    }
    
    func dismissScreen() {
        screenDestination = nil
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
