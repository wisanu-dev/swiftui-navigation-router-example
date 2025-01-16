//
//  LandingRouterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct LandingRouterView: View {
    
    @StateObject var landingRouter = LandingRouter()
    
    var body: some View {
        NavigationStack(path: $landingRouter.path) {
            LandingView()
                .fullScreenCover(item: $landingRouter.screenDestination) { destination in
                    switch destination {
                    case .login:
                        LoginRouterView()
                    case .register:
                        RegisterRouterView()
                    }
                }
        }
        .environmentObject(landingRouter)
    }
}

#Preview {
    LandingRouterView()
}
