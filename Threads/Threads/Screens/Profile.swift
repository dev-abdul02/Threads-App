//
//  Profile.swift
//  Threads
//
//  Created by abdul karim on 08/07/23.
//

import SwiftUI

struct Profile: View {
    
    @State private var selctedSegment = 0
    
    var body: some View {
        NavigationStack {
            ScrollView(content: {
                Image("ic_thread")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 10)
                HeaderView()
                    .padding(.bottom, 10)
                CustomSegmentView()
                    .padding(.bottom, 10)
                CustomTabView()
            })
            .safeAreaPadding(.all)
        }
    }
    
    func HeaderView() -> some View {
        VStack(alignment: .leading) {
            HStack(spacing: 20) {
                VStack(alignment: .leading) {
                    Text("App Developer | Swift, SwiftUI")
                    .font(.title3)
                    Text("coding.fm")
                    .font(.caption2)
                }
                
                Image("ic_coding.fm")
                    .resizable()
                    .frame(width: 60, height: 60)
                
            }
            
            Text("""
                🥽 Learning VisionOS Development
                💻 Sharing coding tips / memes
                🎥 Short-form videos for easy learning
                👨‍💻 Join our community & level up your skills
                """)
            .font(.subheadline)
            .padding(.bottom, 20)
            
            Text("1000 followers · instagram.com/coding.fm")
            .font(.caption2)
        }
    }
    
    func CustomSegmentView() -> some View {
        Picker("", selection: $selctedSegment) {
            Text("Threads").tag(0)
            Text("Replies").tag(1)
        }
        .pickerStyle(.segmented)
        .frame(width: 400)
    }
    
    func CustomTabView() -> some View {
            TabView(selection: $selctedSegment) {
                ThreadsScreen()
                    .tag(0)
                RepliesScreen()
                    .tag(1)
            }
            .frame(height: 600)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
            .padding(.bottom, 20)

    }
}

#Preview {
    Profile()
}
