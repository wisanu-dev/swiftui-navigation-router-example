//
//  ProfileView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var mainRouter: MainRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Profile")
            
            Button("Edit Profile") {
                mainRouter.push(to: OnboardRoute.onboard_main)
            }
        }
    }
}

#Preview {
    ProfileView()
}
