//
//  ComponentsPlaygroundView2.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct ComponentsPlaygroundView2: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 32) {
                Spacer().frame(height: 60)
                
                VStack {
                    Text("Large Title")
                        .font(.largeTitle)
                    
                    Text("Subheadline")
                        .font(.subheadline)
                    
                    Text("body")
                        .font(.body)
                }
                .glassEffect()
                
                HStack {
                    Text("Large Title")
                        .font(.largeTitle)
                    
                    Text("Subheadline")
                        .font(.subheadline)
                    
                    Text("body")
                        .font(.body)
                }
                .glassEffect()
                
            }
        }
        .background {
            Image(.luzonMayon)
        }
    }
}

#Preview {
    ComponentsPlaygroundView2()
}
