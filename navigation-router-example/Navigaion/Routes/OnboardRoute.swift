//
//  OnboardRoute.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum OnboardRoute: Identifiable {
    case onboard_main, onboard_10, onboard_11, onboard_12, onboard_20, onboard_21, onboard_30, onboard_31
    
    var id: UUID {
        UUID()
    }
}
