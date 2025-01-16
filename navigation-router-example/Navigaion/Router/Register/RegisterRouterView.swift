//
//  RegisterRouterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct RegisterRouterView: View {
    
    @StateObject var registerRouter = RegisterRouter()
    
    var body: some View {
        NavigationStack(path: $registerRouter.path) {
            RegisterView()
                .navigationDestination(for: RegisterRoute.self) { destination in
                    switch destination {
                    case .onboard_user:
                        VerifyRegisterView()
                    }
                }
        }
        .environmentObject(registerRouter)
    }
}

#Preview {
    RegisterRouterView()
}
