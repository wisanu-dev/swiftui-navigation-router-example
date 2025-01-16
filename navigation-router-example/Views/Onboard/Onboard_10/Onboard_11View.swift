//
//  Onboard_11View.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 16/1/2568 BE.
//

import SwiftUI

struct Onboard_11View: View {
    @Environment(\.navigationPathDelegate) var navigationPathDelegate
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Onboard 11")
                .bold()
            
            Button("Onboard 12") {
                navigationPathDelegate?.push(to: OnboardRoute.onboard_12)
            }
        }
    }
}

#Preview {
    Onboard_11View()
}
