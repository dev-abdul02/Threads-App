//
//  TextThread.swift
//  Threads
//
//  Created by abdul karim on 09/07/23.
//

import SwiftUI

struct TextThread: View {
    
    @State var heartButtonState:Bool = false
    @State var textContent:String = ""
    
    var body: some View {
        NavigationStack {
            
            VStack(alignment:.leading) {
                TopView()
                .padding(.bottom, 10)
                
                MiddleView()
                .padding(.bottom, 10)
                
                BottomView()
                .padding(.bottom, 5)
                
                HStack {
                    Text("10 like")
                        .fontWeight(.regular)
                        .foregroundColor(.secondary.opacity(0.6))
                    
                    Spacer()
                }
            }
            .safeAreaPadding(.all)
            
        }
    }
    
    
    func TopView() -> some View {
        HStack {
            Image("ic_coding.fm")
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("coding.fm")
            
            Spacer()
            
            Text("1h")
                .fontWeight(.regular)
                .foregroundColor(.secondary.opacity(0.6))
            
            
            Menu {
                Button("Copy Link", action: handleMenu)
                Button("Get embed code", action: handleMenu)
                Button("Report", action: handleMenu)
                
            } label: {
                Image(systemName: "ellipsis")
            }
            
        }
    }
    
    func MiddleView() -> some View {
        Text(textContent)
            .multilineTextAlignment(.leading)
    }
    
    func BottomView() -> some View {
        HStack {
            Button(action: {
                heartButtonState.toggle()
            }, label: {
                if heartButtonState {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .tint(.red)
                }else {
                    Image(systemName: "heart")
                }
    
            })
            .buttonStyle(.plain)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "message")
            })
            .buttonStyle(.plain)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "arrow.2.squarepath")
            })
            .buttonStyle(.plain)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "paperplane")
            })
            .buttonStyle(.plain)
            
            Spacer()
        }
    }
}

extension TextThread {
    func handleMenu() { }
}

#Preview {
    TextThread(textContent: "hello")
}
