//
//  ContentView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/5/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOnboardingComplete = false

    var body: some View {
        VStack {
            if isOnboardingComplete {
                MainTabView() // Show main app content
            } else {
                OnboardingView(isOnboardingComplete: $isOnboardingComplete) // Onboarding screen
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
