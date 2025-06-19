//
//  IslandGroupView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//

import SwiftUI

struct IslandGroupView: View {
    let islandGroup: IslandGroup
    
    @Namespace var namespace
    
    @State private var expand: Bool = false

    var body: some View {
        ScrollView {
            
           
            TabView {
                ForEach(islandGroup.heroImageNames, id: \.self) { imageNames in

                    Image(imageNames)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                }
            }
            .overlay(
                alignment: .center,
                content: {
            

                
                    GlassEffectContainer(spacing: 10) {
                        VStack {
                            Text(islandGroup.name)
                                .font(.largeTitle)
                                .frame(width: UIScreen.main.bounds.width, height: 60)
                                .glassEffect(
                                    .regular,
                                    in: RoundedRectangle(cornerRadius: 25)
                                )
                                
                                .glassEffectID("island", in: namespace)
                            
                            if expand {
                                Text("Population: 2000000")
                                    .glassEffect(
                                        .regular,
                                        in: RoundedRectangle(cornerRadius: 25)
                                    )
                                    .glassEffectID("subtext", in: namespace)
                                    .glassEffectTransition(.matchedGeometry)
                                
                            }
                            
                        }
                    }
                }
            )
            .frame(height: 250)
            .tabViewStyle(PageTabViewStyle())
            
            Button {
                withAnimation {
                    expand.toggle()
                    
                }
            } label: {
                Text("Toggle")
            }

            ForEach(islandGroup.regions) { region in
                GroupBox {
                    Section(header: Text(region.name).font(.title2).bold()) {
                        ForEach(region.provinces, id: \.self) { province in
                            Text(province)
                                .padding(.vertical, 2)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding()
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    // Like action
                }) {
                    Image(systemName: "heart")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    // Share action
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    // Info action
                }) {
                    Image(systemName: "info.circle")
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    NavigationStack {
        IslandGroupView(
            islandGroup: IslandGroup.examples[0]
        )
    }
}
