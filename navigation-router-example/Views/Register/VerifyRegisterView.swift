//
//  VerifyRegisterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI
import SwiftfulRouting

struct VerifyRegisterView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Verify Register")
                .bold()
            
            Button("To Main") {
                
            }
            
            Button("Back to Login") {
                router.showScreen(.fullScreenCover) { router in
                    LoginView()
                }
            }
        }
    }
}

#Preview {
    RouterView { _ in
        LandingView()
    }
}
