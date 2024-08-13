//
//  FeedView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct FeedView: View {
    @EnvironmentObject var feedModelView: FeedViewModel
    var posts: [Post] = Post.examplePosts // Use the updated example data

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(posts) { post in
                        PostRow(post: post)
                    }
                }
                .padding()
            }
            .navigationTitle("OOTD")
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView().environmentObject(FeedViewModel())
    }
}


