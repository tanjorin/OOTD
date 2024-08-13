//
//  OnboardingView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboardingComplete: Bool

    var body: some View {
        VStack {
            Text("Welcome to Vaquxy!!")
                .font(.largeTitle)
                .padding()

            Button(action: {
                isOnboardingComplete = true
            }) {
                Text("Get Started")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingComplete: .constant(false))
    }
}
