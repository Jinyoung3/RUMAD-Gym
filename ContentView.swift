//
//  ContentView.swift
//  Home Page
//
//  Created by Mannav Pilania on 3/16/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            HomeView()
                .tabItem{
                    Image("HomeTab")
                        .renderingMode(.template)
                }
            
            WorkoutsView()
                .tabItem{
                    Image("WorkoutsTab")
                        .renderingMode(.template)
                }
            
            CrowdsView()
                .tabItem{
                    Image("CrowdsTab")
                        .renderingMode(.template)
                }
            
            LeaderboardsView()
                .tabItem{
                    Image("LeaderboardsTab")
                        .renderingMode(.template)
                }
            
            ProfilesView()
                .tabItem{
                    Image("ProfileTab")
                        .renderingMode(.template)
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
