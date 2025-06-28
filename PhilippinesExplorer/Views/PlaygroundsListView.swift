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
                
            }
            .navigationTitle("Playgrounds List")
        }
    }
}

#Preview {
    PlaygroundsListView()
}
