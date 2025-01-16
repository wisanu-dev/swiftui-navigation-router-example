//
//  Onboard_10View.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct Onboard_10View: View {
    @Environment(\.navigationPathDelegate) var navigationPathDelegate
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Onboard 10")
                .bold()
            
            Button("Onboard 11") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_11)
            }
            
            Button("Onboard 20") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_20)
            }
        }
    }
}

#Preview {
    Onboard_10View()
}
