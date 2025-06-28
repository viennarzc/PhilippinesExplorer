//
//  PhilippinesExplorerSplitView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//
import SwiftUI

/// A view that establishes split view navigation for the app.
struct PhilippinesExplorerSplitView: View {
    
    @State private var preferredColumn: NavigationSplitViewColumn = .detail
    @State private var path: NavigationPath = NavigationPath()
    @State private var selectedIsland: IslandGroup? = nil
    @State private var isInspectorPresented: Bool = false
    @State private var searchString: String = ""

    var body: some View {
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
                .navigationDestination(for: Region.self) { collection in
//                    CollectionDetailView(collection: collection)
                }
//                .showsBadges()
            }
            .frame(minWidth: 150)
            .navigationTitle(Text("Philippines Explorer"))
        } detail: {
            NavigationStack(path: $path) {
                NavigationOptions.majorIslandGroups.viewForPage()
            }
            .navigationDestination(for: IslandGroup.self) { island in
//                LandmarkDetailView(landmark: landmark)
            }
//            .showsBadges()
        }
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
