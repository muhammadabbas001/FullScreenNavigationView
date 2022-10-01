//
//  MainTabbedView.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI

struct MainTabbedView: View {
    
    @StateObject private var currentReactives = SetReactiveMethods()
    @State var tabSelected = 0
    
    init(){
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $tabSelected) {
                
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(0)
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass.circle")
                    }
                    .tag(1)
                
                SessionsView()
                    .tabItem {
                        Image(systemName: "video")
                    }
                    .tag(2)
                
                ChatView()
                    .tabItem {
                        Image(systemName: "message")
                    }
                    .tag(3)
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                    }
                    .tag(4)
                
            }
            .accentColor(.pink)
            
            FullScreenNavigationView(isShowing: $currentReactives.presentFullScreenView, content: AnyView(NavigationView { currentReactives.viewToShow.view }))
            
        }
    }
}
