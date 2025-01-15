//
//  ContentView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 14/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var appRouter = AppRouter()
    
    var body: some View {
        NavigationStack(path: $appRouter.path) {
            SplashView()
                .navigationDestination(for: LanguageRoute.self) { destination in
                    switch destination {
                    case .language:
                        LanguageView()
                    case .selectLanguage:
                        SelectLanguageView()
                    }
                }
                .navigationDestination(for: AppRoute.self) { destination in
                    switch destination {
                    case .walkthrough:
                        WalkthroughView()
                    case .termsAndCond:
                        TermsAndCondView()
                    }
                }
                .fullScreenCover(item: $appRouter.screenDestination) { destination in
                    switch destination {
                    case .landing:
                        LandingView()
                    case .main:
                        Text("main")
                    }
                }
        }
        .environmentObject(appRouter)
    }
}

#Preview {
    ContentView()
}
