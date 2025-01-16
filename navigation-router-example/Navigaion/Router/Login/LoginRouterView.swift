//
//  LoginRouterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct LoginRouterView: View {
    @StateObject var loginRouter = LoginRouter()
    
    var body: some View {
        NavigationStack(path: $loginRouter.path) {
            LoginView()
                .navigationDestination(for: LoginRoute.self) { destination in
                    switch destination {
                    case .verify:
                        VerifyLoginView()
                    }
                }
        }
        .environmentObject(loginRouter)
    }
}

#Preview {
    LoginRouterView()
}
