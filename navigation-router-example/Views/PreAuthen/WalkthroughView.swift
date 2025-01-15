//
//  WalkthroughView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct WalkthroughView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Walkthrough")
                .bold()
            
            Button("Next to Terms and Condition") {
                appRouter.push(to: AppRoute.termsAndCond)
            }
        }
    }
}

#Preview {
    WalkthroughView()
}
