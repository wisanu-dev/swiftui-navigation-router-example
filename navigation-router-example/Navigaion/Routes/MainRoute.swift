//
//  MainRoute.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum MainRoute: Identifiable {
    case contact_admin, profile
    
    var id: UUID {
        UUID()
    }
}
