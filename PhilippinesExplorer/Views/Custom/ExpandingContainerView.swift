//
//  ExpandingContainerView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/21/25.
//

import SwiftUI

struct ExpandingContainerView: View {
    @State private var isExpanded = false
    
    var body: some View {
        ZStack {
            GlassEffectContainer {
                VStack {
                    HStack {
                        Text("Hello, World!")
                        Spacer()
                        Image(systemName: isExpanded ? "chevron.compact.up" :  "chevron.compact.down")
                    }
                    .onTapGesture {
                        isExpanded.toggle()
                    }
                    
                    if isExpanded {
                        
                    } else {
                        
                        
                    }
                    
                    
                }
            }
        }
        
    }
}

#Preview {
    ZStack {
        Image(.mindanaoMtapo)
        ExpandingContainerView()
    }
}
