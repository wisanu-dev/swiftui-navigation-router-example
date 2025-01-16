//
//  Onboard_20View.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct Onboard_20View: View {
    @Environment(\.navigationPathDelegate) var navigationPathDelegate
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Onboard 20")
                .bold()
            
            Button("Onboard 21") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_21)
            }
            
            Button("Onboard 30") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_30)
            }
        }
    }
}

#Preview {
    Onboard_20View()
}
