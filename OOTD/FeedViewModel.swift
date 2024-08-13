//
//  FeedViewModel.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    @Published var posts: [Post] = Post.examplePosts
    
    func addPost(_ post: Post) {
        posts.append(post)
    }
    
    func refreshFeed() {
        // Fetch updated posts from local storage or server if needed
    }
}


