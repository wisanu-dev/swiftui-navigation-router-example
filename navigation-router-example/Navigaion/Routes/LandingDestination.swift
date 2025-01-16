//
//  LandingDestination.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum LandingDestination: Identifiable {
    case register, login
    
    var id: UUID {
        UUID()
    }
}

