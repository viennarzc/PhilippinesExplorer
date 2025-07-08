//
//  PhilippinesExplorerSplitView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//
import SwiftUI

/// A view that establishes split view navigation for the app.
struct PhilippinesExplorerSplitView: View {
    enum AppTab {
        case one
        case two
        case three
        case four
        case five
        case six
    }

    @State private var preferredColumn: NavigationSplitViewColumn = .detail
    @State private var path: NavigationPath = NavigationPath()
    @State private var selectedIsland: IslandGroup? = nil
    @State private var isInspectorPresented: Bool = false
    @State private var searchString: String = ""
    @State private var selection: AppTab
        = .one

    var body: some View {
        TabView(selection: $selection) {
            Tab(
                "Tab one",
                systemImage: "house",
                value: .one
            ) {
                NavigationSplitView(preferredCompactColumn: $preferredColumn) {
                    List {
                        Section {
                            ForEach(NavigationOptions.mainPages) { page in
                                NavigationLink(value: page) {
                                    Label(page.name, systemImage: page.symbolName)
                                }
                            }
                        }
                    }
                    .navigationDestination(for: NavigationOptions.self) { page in
                        NavigationStack(path: $path) {
                            page.viewForPage()
                        }
                        .navigationDestination(for: IslandGroup.self) { island in
                            IslandGroupView(islandGroup: island)
                        }
                        .navigationDestination(for: Region.self) { _ in
                        }
                        //                .showsBadges()
                    }
                    .frame(minWidth: 150)
                    .navigationTitle(Text("Philippines Explorer"))
                } detail: {
                    NavigationStack(path: $path) {
                        NavigationOptions.majorIslandGroups.viewForPage()
                    }
                    .navigationDestination(for: IslandGroup.self) { _ in
                    }
                    //            .showsBadges()
                }
            }
            
            Tab(
                "Tab 2",
                systemImage: "network",
                value: .two
            ) {
                Text("Some Content")
            }
            
            Tab(
                "Tab 3",
                systemImage: "bolt.circle",
                value: .three
            ) {
                Text("Some Content 2")
            }
            
            Tab(
                "Tab 5",
                systemImage: "tray.2",
                value: .five
            ) {
                Text("Some Much content")
            }
            
            Tab(
                "Tab 6",
                systemImage: "calendar.badge.clock",
                value: .six
            ) {
                Text("Some Much content")
            }
            
            Tab(
                "Search",
                systemImage: "magnifyingglass",
                value: .four,
                role: .search) {
                    Text("Some content for search")
                }
        }
        .tint(.pink)
        .tabViewStyle(.tabBarOnly)
        // Adds global search, where the system positions the search bar automatically
        // in content views.
        .searchable(text: $searchString, prompt: "Search")
        // Adds the inspector, which the landmark detail view uses to display
        // additional information.
        .inspector(isPresented: $isInspectorPresented) {
            if let island = selectedIsland {
//                LandmarkDetailInspectorView(landmark: landmark, inspectorIsPresented: $modelData.isLandmarkInspectorPresented)
            } else {
                EmptyView()
            }
        }
    }
}
