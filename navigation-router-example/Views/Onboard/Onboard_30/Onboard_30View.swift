//
//  Onboard_30View.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct Onboard_30View: View {
    @Environment(\.navigationPathDelegate) var navigationPathDelegate
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Onboard 30")
                .bold()
            
            Button("Onboard 31") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_31)
            }
            
            Button("Submit") {
                if let onboardRouter = navigationPathDelegate as? OnboardRouter {
                    onboardRouter.navigateToRoot()
                }else if let mainRouter = navigationPathDelegate as? MainRouter {
                    mainRouter.navigateBack(stackCount: mainRouter.path.count - 1)
                }
            }
        }
    }
}

#Preview {
    Onboard_30View()
}
