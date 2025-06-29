//
//  PlaygroundsListView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct PlaygroundsListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ComponentsPlaygroundView()
                } label: {
                    Text("Components Playground 1")
                }
                
                NavigationLink {
                    ComponentsPlaygroundView2()
                } label: {
                    Text("Components Playground 2")
                }
                
                NavigationLink {
                    ComponentsExploreListView()
                } label: {
                    Text("Lists")
                }
                
                NavigationLink {
                    ComponentsExploreFormsView()
                } label: {
                    Text("Forms")
                }
                
                
            }
            .navigationTitle("Playgrounds List")
        }
    }
}

#Preview {
    PlaygroundsListView()
}
