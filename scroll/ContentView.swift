//
//  ContentView.swift
//  scroll
//
//  Created by oiu on 01.10.2023.
//

import SwiftUI

struct ScrollableContent: View {
    
    var body: some View {
        ScrollView {
            Color.indigo
                .frame(height: 1000)
        }
    }
}

struct ContentView: View {
    
    private enum Constants {
        static let insetHeight: CGFloat = 50
    }
    
    var body: some View {
        TabView {
            ScrollableContent()
                .tabItem { Label("Scroll", systemImage: "circle") }
                .safeAreaInset(
                    edge: .bottom,
                    alignment: .center,
                    spacing: .zero
                ) {
                    Color.yellow
                        .opacity(0.5)
                        .frame(height: Constants.insetHeight)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
