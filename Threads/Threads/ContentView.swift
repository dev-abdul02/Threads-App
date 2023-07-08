//
//  ContentView.swift
//  Threads
//
//  Created by abdul karim on 08/07/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            TabView {
                Home()
                 .tabItem {
                    Label("Home", systemImage: "house")
                }
                Search()
                    .tabItem {
                       Label("Search", systemImage: "magnifyingglass")
                   }
                Activity()
                    .tabItem {
                       Label("Activity", systemImage: "heart")
                   }
                Profile()
                    .tabItem {
                       Label("Profile", systemImage: "person")
                   }
            }
        }
    }
}

#Preview {
    ContentView()
}
