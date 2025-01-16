//
//  LangugateRoute.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import Foundation

enum LanguageRoute: Identifiable {
    case language, selectLanguage
    
    var id: UUID {
        UUID()
    }
}
