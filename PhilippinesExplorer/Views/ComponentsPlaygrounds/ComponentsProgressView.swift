//
//  ComponentsProgressView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/4/25.
//

import SwiftUI

struct ComponentsProgressView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                Spacer(minLength: 64)
                
                ProgressView("Progress", value: 50, total: 100)
                    .padding()
                    .glassEffect()
                
                ProgressView("Progress", value: 50, total: 100)
                    .padding()
                    .glassEffect()
                    .progressViewStyle(.circular)
                
                ProgressView(value: 50, total: 100)
                    .padding()
                    .glassEffect()
                    .progressViewStyle(.circular)
            }
            .padding(.horizontal)
        }
        .background {
            Image(ImageResource.visayasIloilo)
        }
    }
}

#Preview {
    ComponentsProgressView()
}
