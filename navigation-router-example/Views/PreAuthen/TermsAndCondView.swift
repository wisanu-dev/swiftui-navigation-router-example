//
//  TermsAndCondView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct TermsAndCondView: View {
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Terms & Condition")
                .bold()
            
            Button("to Main") {
                
            }
            
            Button("to Landing") {
                appRouter.navigateToRoot()
                appRouter.showScreen(to: AppDestination.landing)
            }
        }
    }
}

#Preview {
    TermsAndCondView()
}
