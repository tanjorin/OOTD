//
//  MainTabView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

struct MainTabView: View {
    @StateObject var feedViewModel = FeedViewModel()
    @StateObject var lockerViewModel = LockerViewModel()
    @StateObject var calendarViewModel = CalendarViewModel() // Add this line

    var body: some View {
        TabView {
            FeedView()
                .environmentObject(feedViewModel)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Feed")
                }
            
            PostOutfitView()
                .environmentObject(feedViewModel) // Ensure feedViewModel is passed here as well
                .tabItem {
                    Label("Post Outfit", systemImage: "camera")
                }

            LockerView()
                .environmentObject(lockerViewModel)
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Locker")
                }

            CalendarView()
                .environmentObject(calendarViewModel) // Add environmentObject here
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.blue)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
