//
//  SelectLanguageView.swift
//  navigation-router-example
//
//  Created by Wisanu Paunglumjeak on 15/1/2568 BE.
//

import SwiftUI

struct SelectLanguageView: View {
    
    @EnvironmentObject var appRouter: AppRouter
    
    var body: some View {
        VStack(spacing: 32) {
            Text("Select Language")
                .bold()
            
            Button("Set Language & back stack") {
                appRouter.navigateBack()
            }
        }
    }
}

#Preview {
    SelectLanguageView()
}
