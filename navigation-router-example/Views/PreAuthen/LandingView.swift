//
//  LandingView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct LandingView: View {
    
    @Environment(\.router) var router
    @EnvironmentObject var storeData: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Landing View")
                .bold()
            
            Button("To Login") {
                storeData.someString = "Hello from Login"
                router.showScreen(.fullScreenCover) { _ in
                    LoginView()
                }
            }
            
            Button("To Register") {
                storeData.someString = "Hello from Register" 
                router.showScreen(.fullScreenCover) { _ in
                    RegisterView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
