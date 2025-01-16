//
//  NavigationPathDelegate.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

protocol NavigationPathDelegate {
    func push<T: Hashable>(to destination: T)
    func showScreen<T: Hashable>(to destination: T)
    func dismissScreen()
    func navigateBack()
    func navigateBack(stackCount: Int)
    func navigateToRoot()
}

private struct NavigationRouterDelegateKey: EnvironmentKey {
    static let defaultValue: NavigationPathDelegate? = nil
}

extension EnvironmentValues {
    var navigationPathDelegate: NavigationPathDelegate? {
        get { self[NavigationRouterDelegateKey.self] }
        set { self[NavigationRouterDelegateKey.self] = newValue }
    }
}

extension View {
    
    func pathDelegate(_ delegate: NavigationPathDelegate) -> some View {
        return environment(\.navigationPathDelegate, delegate)
    }
}
