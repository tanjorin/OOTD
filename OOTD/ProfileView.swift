//
//  ProfileView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/5/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Profile Picture
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                    .shadow(radius: 10)
                
                // Username
                Text("Username")
                    .font(.title)
                    .fontWeight(.bold)
                
                // Bio
                Text("Fashion enthusiast. Sharing my daily outfits.")
                    .font(.body)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
                
                // Edit Profile Button
                Button(action: {
                    // Action for editing profile
                }) {
                    Text("Edit Profile")
                        .font(.headline)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
