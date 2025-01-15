//
//  AppRouter.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

enum PreLoginScreenDestination: Identifiable {
    case landing, main
    
    var id: UUID {
        UUID()
    }
    
}

enum LanguageRoute: Identifiable {
    case language, selectLanguage
    
    var id: UUID {
        UUID()
    }
}

enum AppRoute: Identifiable {
    case walkthrough, termsAndCond
    
    var id: UUID {
        UUID()
    }
}

final class AppRouter: ObservableObject, NavigationPathDelegate {
    
    @Published var path: NavigationPath
    @Published var screenDestination: PreLoginScreenDestination?
    
    init(path: NavigationPath = NavigationPath()) {
        self.path = path
    }
    
    func push<T>(to destination: T) where T : Hashable {
        path.append(destination)
    }
    
    func showScreen<T>(to destination: T) where T : Hashable {
        screenDestination = destination as? PreLoginScreenDestination
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
