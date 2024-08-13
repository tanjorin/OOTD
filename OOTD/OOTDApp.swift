//
//  OOTDApp.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/5/24.
//

import SwiftUI

@main
struct OOTDApp: App {
    @StateObject private var feedViewModel = FeedViewModel() // Create an instance of FeedViewModel

    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(feedViewModel) // Inject FeedViewModel into the environment
        }
    }
}
