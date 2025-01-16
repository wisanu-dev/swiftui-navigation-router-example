//
//  NavigationPathDelegate.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import Foundation

protocol NavigationPathDelegate {
    func push<T: Hashable>(to destination: T)
    func showScreen<T: Hashable>(to destination: T)
    func dismissScreen()
    func navigateBack()
    func navigateBack(stackCount: Int)
    func navigateToRoot()
}
