//
//  ComponentsExploreFormsView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct ComponentsExploreFormsView: View {
    @State private var text = ""
    @State private var text2 = ""
    
    var body: some View {

        Form {
            Section("section 1") {
                TextField("Enter text", text: $text)
                TextField("Enter text", text: $text2)
                
            }
            
            
            Section("section 2") {
                
                TextField("Enter text", text: $text)
                    .padding()
                
                TextField("Enter text", text: $text2)
                    .padding()
                
            }
            .glassEffect()
            
        }

    }
}

#Preview {
    ComponentsExploreFormsView()
}
