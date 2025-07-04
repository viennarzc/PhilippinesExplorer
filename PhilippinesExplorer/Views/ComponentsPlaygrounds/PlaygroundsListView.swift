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
                
                NavigationLink {
                    ComponentControlsToggleView()
                } label: {
                    Text("Toggles")
                }
                
                NavigationLink {
                    ComponentsControlsButtonView()
                } label: {
                    Text("Buttons")
                }
                
                NavigationLink {
                    ComponentsMenuView()
                } label: {
                    Text("Menu")
                }
                
                NavigationLink {
                    ComponentsPickerView()
                } label: {
                    Text("Picker")
                }
                
                NavigationLink {
                    ComponentsSliderView()
                } label: {
                    Text("Slider")
                }
                
                NavigationLink {
                    ComponentsDatePickerView()
                } label: {
                    Text("Date Picker")
                }
                
                
            }
            .navigationTitle("Playgrounds List")
        }
    }
}

#Preview {
    PlaygroundsListView()
}
