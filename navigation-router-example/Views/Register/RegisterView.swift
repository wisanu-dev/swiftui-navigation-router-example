//
//  RegisterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var landingRouter: LandingRouter
    @EnvironmentObject var registerRouter: RegisterRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Register")
                .bold()
            
            Button("Verify") {
                storeDataObject.someString = "Hello from Register"
                registerRouter.push(to: RegisterRoute.onboard_user)
            }
            
            Button("Dismiss") {
                landingRouter.dismissScreen()
            }
        }
    }
}

#Preview {
    RegisterView()
}
