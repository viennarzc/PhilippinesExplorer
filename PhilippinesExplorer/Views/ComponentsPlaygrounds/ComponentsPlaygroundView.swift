//
//  ComponentsPlaygroundView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/19/25.
//

import SwiftUI

struct ComponentsPlaygroundView: View {
    @State private var expand: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        ScrollView {
                VStack {
                    Text("Mindanao")
                        .font(.largeTitle)
                        .frame(width: UIScreen.main.bounds.width - 32, height: 60)
                        .glassEffect(
                            .regular,
                            in: RoundedRectangle(cornerRadius: 25)
                        )
                        .glassEffectID("island", in: namespace)
                    
                    if expand {
                        Text("Population: 500000")
                            .frame(width: 200, height: 60)
                            .glassEffect(
                                .regular,
                                in: Rectangle()
                            )
                            .glassEffectID("subtext", in: namespace)
                            .glassEffectTransition(.matchedGeometry)
                        
                        Text("Islands: 100")
                            .frame(width: 200, height: 60)
                            .glassEffect(
                                .regular,
                                in: Rectangle()
                            )
                            .glassEffectID("subtext-2", in: namespace)
                            .glassEffectTransition(.matchedGeometry)
                        
                    }
                    
                }
            .ignoresSafeArea(edges: .top)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                    withAnimation {
                        expand.toggle()
                    }
                }) {
                    Image(systemName: "circle.dotted.and.circle")
                }
            }
        }
        .background {
            Image(.luzonMayon)
        }
    }
}

#Preview {
    NavigationStack {
        ComponentsPlaygroundView()
        
    }
}
