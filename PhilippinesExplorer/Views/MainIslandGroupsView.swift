//
//  MainIslandGroupsView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//

import SwiftUI

struct MainIslandGroupsView: View {
    var body: some View {
        ScrollView {
            ForEach(IslandGroup.examples) { island in
                Section {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(island.heroImageNames, id: \.self) { name in
                                Image(name)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .clipShape(RoundedRectangle(cornerRadius: 18))
                            }
                        }
                        .padding(.leading)
                    }

                    List {
                        ForEach(island.regions, id: \.self) { region in
                            Text(region.name)
                        }
                    }
                } header: {
                    Text(island.name)
                        .font(.headline.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
            }
            .navigationTitle("Major Island Groups")
        }
    }
}

#Preview {
    NavigationStack {
        MainIslandGroupsView()
    }
}
