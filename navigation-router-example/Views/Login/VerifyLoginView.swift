//
//  VerifyLoginView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct VerifyLoginView: View {
    
    @EnvironmentObject var landingRouter: LandingRouter
    @EnvironmentObject var appRouter: AppRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Verify Login")
                .bold()

            Button("To Main") {
                storeDataObject.someString = "Verfiy from Register"
                appRouter.showScreen(to: AppDestination.main)
            }
            
            Button("Dismiss") {
                landingRouter.dismissScreen()
            }
        }
    }
}

#Preview {
    VerifyLoginView()
}
