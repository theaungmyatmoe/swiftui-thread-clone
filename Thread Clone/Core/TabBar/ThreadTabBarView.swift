//
//  ThreadTabBarView.swift
//  Thread Clone
//
//  Created by Aung Myat Moe on 31/05/2025.
//

import SwiftUI

enum Tabs {
    case Home, Explore, Add, Activity, Profile
}

struct ThreadTabBarView: View {
    @State private var selectedTab: Tabs = .Home

    var body: some View {
        TabView {

            FeedView()
                .tabItem {
                    Image(
                        systemName: selectedTab == .Home
                            ? "house.fill" : "house"
                    )
                    .environment(
                        \.symbolVariants,
                        selectedTab == .Home ? .fill : .none
                    )
                }
                .onAppear {
                    selectedTab = .Home
                }
                .tag(Tabs.Home)

            ExploreView()
                .tabItem {
                    Image(
                        systemName: "magnifyingglass"
                    )
                }
                .onAppear {
                    selectedTab = .Explore
                }
                .tag(Tabs.Explore)

            Text("Add")
                .tabItem {
                    Image(
                        systemName: "plus"
                    )
                }
                .onAppear {
                    selectedTab = .Add
                }
                .tag(Tabs.Add)

            Text("Acitivity")
                .tabItem {
                    Image(
                        systemName: selectedTab == .Home
                            ? "heart.fill" : "heart"
                    )
                    .environment(
                        \.symbolVariants,
                        selectedTab == .Activity ? .fill : .none
                    )
                }
                .onAppear {
                    selectedTab = .Activity
                }
                .tag(Tabs.Activity)

            Text("Profile")
                .tabItem {
                    Image(
                        systemName: selectedTab == .Home
                            ? "person" : "person.fill"
                    )
                    .environment(
                        \.symbolVariants,
                        selectedTab == .Activity ? .fill : .none
                    )
                }
                .onAppear {
                    selectedTab = .Profile
                }
                .tag(Tabs.Profile)

        }
        .accentColor(.black)

    }

}

#Preview {
    ThreadTabBarView()
}
