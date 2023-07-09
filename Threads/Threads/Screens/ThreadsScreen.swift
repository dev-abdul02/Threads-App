//
//  ThreadsScreen.swift
//  Threads
//
//  Created by abdul karim on 08/07/23.
//

import SwiftUI

struct ThreadsScreen: View {
    var body: some View {
        NavigationStack {
            List {
                TextThread(textContent: """
                Exciting news! Xcode 15b3 has arrived, bringing a fantastic update to SwiftUI. Say goodbye to the 10-view limit because it has been completely removed! 🎉✨
                           
                Now, you have the freedom to add as many child views as you desire, without the need for Group.
                """)
                TextThread(textContent: """
                Day 2 of developing @threadApp for visionOS
                - working on profile tab
                - use segment for threads and replies
                - combined with tab view and list view
                """)
                
                TextThread(textContent: """
                Day 1 of developing @threadApp for visionOS
                - project setup
                - made floating tab
                - made depth icon using sketch
                - posted on threadApp and instagram
                """)
            }
        }
        .safeAreaPadding(.all)
    }
}

#Preview {
    ThreadsScreen()
}
