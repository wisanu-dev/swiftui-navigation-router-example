//
//  MainTabView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct MainTabView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
                .tag(0)
            
            JobsView()
                .tabItem {
                    Image(systemName: "briefcase")
                    
                    Text("Jobs")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    
                    Text("Settings")
                }
                .tag(2)
        }
    }
}

#Preview {
    MainTabView()
}
