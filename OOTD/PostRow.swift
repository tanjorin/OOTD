//
//  PostRow.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct PostRow: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(uiImage: post.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Text(post.username)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
            }
            .padding([.top, .leading])
            
            Image(uiImage: post.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .clipped()

            HStack {
                Button(action: {
                    // Like action
                }) {
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }
                
                Button(action: {
                    // Comment action
                }) {
                    Image(systemName: "bubble.right")
                }
                
                Spacer()
                
                Button(action: {
                    // Share action
                }) {
                    Image(systemName: "paperplane")
                }
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: Post.examplePosts.first!)
    }
}
