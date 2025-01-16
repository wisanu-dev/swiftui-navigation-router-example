//
//  LoginView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var landingRouter: LandingRouter
    @EnvironmentObject var loginRouter: LoginRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Login")
                .bold()
            
            Text(storeDataObject.someString ?? "")
                .bold()
            
            Button("Verify") {
                loginRouter.push(to: LoginRoute.verify)
            }
            Button("Dismiss") {
                landingRouter.dismissScreen()
            }
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(StoreDataObject(someString: "Hello from Preview"))
}
