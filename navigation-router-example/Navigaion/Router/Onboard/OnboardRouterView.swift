//
//  OnboardRouterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct OnboardRouterView: View {
    
    @StateObject var onboardRouter = OnboardRouter()
    
    var body: some View {
        NavigationStack(path: $onboardRouter.path) {
            OnboardMainView()
                .navigationDestination(for: OnboardRoute.self) { destination in
                    switch destination {
                    case .onboard_main:
                        EmptyView()
                    case .onboard_10:
                        Onboard_10View()
                    case .onboard_11:
                        Onboard_11View()
                    case .onboard_12:
                        Onboard_12View()
                    case .onboard_20:
                        Onboard_20View()
                    case .onboard_21:
                        Onboard_21View()
                    case .onboard_30:
                        Onboard_30View()
                    case .onboard_31:
                        Onboard_31View()
                    }
                }
        }
        .pathDelegate(onboardRouter)
        .environmentObject(onboardRouter)
    }
}

#Preview {
    OnboardRouterView()
}
