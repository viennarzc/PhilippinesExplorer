//
//  ComponentControlsToggleView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/29/25.
//

import SwiftUI

struct ComponentControlsToggleView: View {
    @State private var toggleValue1 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 48) {
                Toggle(isOn: $toggleValue1) {
                    Label("With Label and System Image", systemImage: "menucard")
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Tinted Toggle")
                }
                .tint(.blue)
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle - Button Style")
                }
                .toggleStyle(.button)
                .glassEffect()
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .tint(.orange)
                
                GroupBox {
                    Toggle(isOn: $toggleValue1) {
                        Text("Toggle")
                    }
                    .labelsHidden()
                    .tint(.orange)
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            RadialGradient(
                                colors: [Color.green, Color.blue, Color.teal],
                                center: .bottomLeading,
                                startRadius: 50,
                                endRadius: 300
                            )
                        )
                }
                .tint(Color.red)
                
                Divider()
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.bar
                        )
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.regular
                        )
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.thick
                        )
                }
                
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.ultraThick
                        )
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.thin
                        )
                }
                
                Toggle(isOn: $toggleValue1) {
                    Text("Toggle")
                }
                .labelsHidden()
                .padding(32)
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(
                            Material.ultraThin
                        )
                }
            
                
                Spacer(minLength: 90)

                
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .top) {
            Spacer().frame(height: 60)
        }
        .background {
            Image(.luzonMetromanila)
        }
    }
}

#Preview {
    ComponentControlsToggleView()
}
