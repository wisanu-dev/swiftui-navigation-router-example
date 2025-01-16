//
//  HomeView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    @EnvironmentObject var mainRouter: MainRouter
    @EnvironmentObject var storeDataObject: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Home")
                .bold()
            
            Text(storeDataObject.someString ?? "")
            
            Button("Onboard Worker") {
                storeDataObject.someString = "Onboard Worker"
                mainRouter.showScreen(to: MainDestination.onboard_worker)
            }
            
            Button("Contact Admin") {
                mainRouter.push(to: MainRoute.contact_admin)
            }
            
            Button("Logout") {
                appRouter.dismissScreen()
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(StoreDataObject())
}
