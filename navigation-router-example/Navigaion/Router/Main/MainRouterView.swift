//
//  MainRouterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct MainRouterView: View {
    
    @StateObject var mainRouter = MainRouter()
    
    var body: some View {
        NavigationStack(path: $mainRouter.path) {
            MainTabView()
                .navigationDestination(for: MainRoute.self) { destination in
                    switch destination {
                    case .contact_admin:
                        ContactAdminView()
                    case .profile:
                        ProfileView()
                    }
                }
                .navigationDestination(for: OnboardRoute.self) { destination in
                    switch destination {
                    case .onboard_main:
                        OnboardMainView()
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
                .fullScreenCover(item: $mainRouter.screenDestination) { destination in
                    switch destination {
                    case .onboard_worker:
                        OnboardRouterView()
                    }
                }
        }
        .pathDelegate(mainRouter)
        .environmentObject(mainRouter)
    }
}

#Preview {
    MainRouterView()
}
