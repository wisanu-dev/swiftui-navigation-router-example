//
//  OnboardMainView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct OnboardMainView: View {
    @EnvironmentObject var storeDataObject: StoreDataObject
    @EnvironmentObject var mainRouter: MainRouter
    @Environment(\.navigationPathDelegate) var navigationPathDelegate
    
    var body: some View {
        VStack(spacing: 32) {
            Text("\(storeDataObject.someString ?? "") Main")
                .bold()
            
            Button("Onboard 10") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_10)
            }
            
            Button("Onboard 20") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_20)
            }
            
            Button("Onboard 30") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_30)
            }
            
            Button("Submit") {
                if navigationPathDelegate as? OnboardRouter != nil {
                    mainRouter.dismissScreen()
                }else if let mainRouter = navigationPathDelegate as? MainRouter {
                    mainRouter.navigateBack()
                }
            }
        }
    }
}

#Preview {
    OnboardMainView()
        .environmentObject(StoreDataObject())
}
