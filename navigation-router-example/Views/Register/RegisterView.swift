//
//  RegisterView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI
import SwiftfulRouting

struct RegisterView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Register")
                .bold()
            
            Button("Verify") {
                router.showScreen(.push) {
                    router.showAlert(.alert, title: "Exist from Register") {
                        Text("Ok")
                    }
                } destination: { _ in
                    VerifyRegisterView()
                }
            }
            
            Button("Present Error") {
                router.showAlert(.alert, title: "Present Error") {
                    Text("Ok")
                }
            }
            
            Button("Dismiss") {
                router.dismissScreen()
            }
        }
    }
}

#Preview {
    RouterView { _ in
        RegisterView()
    }
}
