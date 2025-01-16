//
//  ContentView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 14/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var appRouter = AppRouter()
    @StateObject private var storeDataObject = StoreDataObject()
    
    var body: some View {
        NavigationStack(path: $appRouter.path) {
            SplashView()
                .navigationDestination(for: LanguageRoute.self) { destination in
                    switch destination {
                    case .language:
                        LanguageView()
                            .navigationBarBackButtonHidden(true)
                    case .selectLanguage:
                        SelectLanguageView()
                    }
                }
                .navigationDestination(for: AppRoute.self) { destination in
                    switch destination {
                    case .walkthrough:
                        WalkthroughView()
                            .navigationBarBackButtonHidden(true)
                    case .termsAndCond:
                        TermsAndCondView()
                    }
                }
                .fullScreenCover(item: $appRouter.screenDestination) { destination in
                    switch destination {
                    case .landing:
                        LandingRouterView()
                    case .main:
                        MainRouterView()
                    }
                }
        }
        .environmentObject(appRouter)
        .environmentObject(storeDataObject)
    }
}

#Preview {
    ContentView()
}
