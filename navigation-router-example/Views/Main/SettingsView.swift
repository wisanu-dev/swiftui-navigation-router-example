//
//  SettingsView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var storeDataObject: StoreDataObject
    @EnvironmentObject var appRouter: AppRouter
    @EnvironmentObject var mainRouter: MainRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Settings")
                .bold()
            
            Button("Onboard Worker") {
                storeDataObject.someString = "Onboard Worker"
                mainRouter.showScreen(to: MainDestination.onboard_worker)
            }
            
            Button("Profile") {
                storeDataObject.someString = "Edit Profile"
                mainRouter.push(to: MainRoute.profile)
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
    SettingsView()
}
