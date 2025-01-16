//
//  AppRoute.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum AppRoute: Identifiable {
    case walkthrough, termsAndCond
    
    var id: UUID {
        UUID()
    }
}
