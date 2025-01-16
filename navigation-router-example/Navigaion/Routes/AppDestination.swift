//
//  PreLoginScreenRoute.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum AppDestination: Identifiable {
    case landing, main
    
    var id: UUID {
        UUID()
    }
    
}
