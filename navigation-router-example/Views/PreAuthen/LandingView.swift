//
//  LandingView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct LandingView: View {
    
    @EnvironmentObject var landingRouter: LandingRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Landing View")
                .bold()
            
            Button("To Login") {
                storeDataObject.someString = "Hello from Login"
                landingRouter.showScreen(to: LandingDestination.login)
            }
            
            Button("To Register") {
                landingRouter.showScreen(to: LandingDestination.register)
            }
        }
    }
}

#Preview {
    ContentView()
}
