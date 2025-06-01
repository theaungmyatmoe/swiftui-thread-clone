import SwiftUI

enum Tabs: CaseIterable {
    case Home, Explore, Add, Activity, Profile
}

struct ThreadTabBarView: View {
    @State private var selectedTab: Tabs = .Home
    @State private var showCreatePost: Bool = false

    var body: some View {
        TabView(selection: $selectedTab) {
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
                .tag(Tabs.Home)

            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(Tabs.Explore)

            Color.clear
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(Tabs.Add)

            Text("Activity")
                .tabItem {
                    Image(
                        systemName: selectedTab == .Activity
                            ? "heart.fill" : "heart"
                    )
                    .environment(
                        \.symbolVariants,
                        selectedTab == .Activity ? .fill : .none
                    )
                }
                .tag(Tabs.Activity)

            ProfileView()
                .tabItem {
                    Image(
                        systemName: selectedTab == .Profile
                            ? "person.fill" : "person"
                    )
                    .environment(
                        \.symbolVariants,
                        selectedTab == .Profile ? .fill : .none
                    )
                }
                .tag(Tabs.Profile)
        }
        .onChange(of: selectedTab) { oldValue, newValue in
            if newValue == .Add {
                showCreatePost = true
                selectedTab = oldValue
            }
        }
        .sheet(isPresented: $showCreatePost, ) {
            CreateThreadView()
        }
        .accentColor(.black)
    }
}

#Preview {
    ThreadTabBarView()
}
