//
//  VerifyRegisterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct VerifyRegisterView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    @EnvironmentObject var landingRouter: LandingRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Verify Register")
                .bold()
            
            Button("To Main") {
                storeDataObject.someString = "Verfiy from Register"
                appRouter.showScreen(to: AppDestination.main)
            }
            
            Button("Back to Login") {
                landingRouter.showScreen(to: LandingDestination.login)
            }
        }
    }
}

#Preview {
    LandingView()
}
