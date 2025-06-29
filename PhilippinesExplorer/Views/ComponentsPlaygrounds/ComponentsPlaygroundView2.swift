//
//  ComponentsPlaygroundView2.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct ComponentsPlaygroundView2: View {
    @State private var expand: Bool = false
    
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
                
                ZStack {
                    Text("Large Title")
                        .font(.largeTitle)
                    
                    Text("Subheadline")
                        .font(.subheadline)
                    
                    Text("body")
                        .font(.body)
                }
                .glassEffect()
                
                GroupBox {
                    HStack {
                        Text("Large Title")
                            .font(.largeTitle)
                        
                        Text("Subheadline")
                            .font(.subheadline)
                        
                        Text("body")
                            .font(.body)
                    }
                }
                .glassEffect()
                .backgroundStyle(Color.red)
                
                GroupBox {
                    HStack {
                        Text("Large Title")
                            .font(.largeTitle)
                        
                        Text("Subheadline")
                            .font(.subheadline)
                        
                        Text("body")
                            .font(.body)
                    }
                }
                .glassEffect()
                .backgroundStyle(Color.clear)
                
                
            }
        }
        .background {
            Image(.luzonBanaue)
        }
    }
}

#Preview {
    NavigationStack {
        ComponentsPlaygroundView2()
    }
}
