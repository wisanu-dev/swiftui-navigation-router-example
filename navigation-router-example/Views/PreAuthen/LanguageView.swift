//
//  LanguageView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct LanguageView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Language")
                .bold()
            
            Button("Select Language") {
                appRouter.push(to: LanguageRoute.selectLanguage)
            }
            
            Button("Next Flow") {
                appRouter.push(to: AppRoute.walkthrough)
            }
        }
    }
}

#Preview {
    LanguageView()
        .environmentObject(AppRouter())
}
