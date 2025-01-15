//
//  LoginView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.router) var router
    @EnvironmentObject var storeData: StoreDataObject
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Login")
                .bold()
            
            Text(storeData.someString ?? "")
                .bold()
            
            Button("Verify") {
                
            }
            
            Button("Present Action Sheet") {
                
            }
            
            Button("Dismiss") {
                router.dismissScreen()
            }
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(StoreDataObject(someString: "Hello from Preview"))
}
