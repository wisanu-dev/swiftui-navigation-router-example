//
//  SplashView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Splash")
                .bold()
            
            Button("Language") {
                appRouter.push(
                    to: LanguageRoute.language
                )
            }
            
            Button("Walkthrough") {
                appRouter.push(
                    to: AppRoute.walkthrough
                )
            }
            
            Button("Terms and Condition") {
                appRouter.push(
                    to: AppRoute.termsAndCond
                )
            }
            
            Button("Landing") {
                appRouter.showScreen(
                    to: AppDestination.landing
                )
            }
            
            Button("Main") {
                appRouter.showScreen(
                    to: AppDestination.main
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
