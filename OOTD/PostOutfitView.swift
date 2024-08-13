//
//  PostOutfitView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct PostOutfitView: View {
    @EnvironmentObject var feedViewModel: FeedViewModel // Shared ViewModel
    @EnvironmentObject var lockerViewModel: LockerViewModel // Added for Locker ViewModel
    @State private var selectedImage: UIImage?
    @State private var showImagePicker = false
    @Environment(\.presentationMode) var presentationMode // To navigate back

    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            } else {
                Text("Select an image")
                    .padding()
            }

            Button(action: {
                // Ensure the image is selected before posting
                guard let image = selectedImage else { return }
                let newPost = Post(username: "Current User", image: image)
                feedViewModel.addPost(newPost) // Add post to the feed
                
                // Add items to locker
                let newItem = LockerItem(name: "Outfit Piece", category: .tShirt, image: image)
                lockerViewModel.addItem(newItem)
                
                presentationMode.wrappedValue.dismiss() // Go back to the feed view
            }) {
                Text("Post Outfit")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(selectedImage: $selectedImage)
        }
        .onTapGesture {
            showImagePicker = true
        }
    }
}

struct PostOutfitView_Previews: PreviewProvider {
    static var previews: some View {
        PostOutfitView()
            .environmentObject(FeedViewModel())
            .environmentObject(LockerViewModel())
    }
}
