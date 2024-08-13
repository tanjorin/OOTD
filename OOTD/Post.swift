//
//  Post.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//


import SwiftUI

struct Post: Identifiable {
    var id = UUID() // Unique identifier for each post
    var username: String
    var image: UIImage

    // Example static data for preview
    static let examplePosts = [
        Post(username: "Vaquxy", image: UIImage(named: "OOTD1")!),
        Post(username: "Vaquxy", image: UIImage(named: "OOTD2")!),
        Post(username: "Vaquxy", image: UIImage(named: "OOTD3")!)
    ]
}
