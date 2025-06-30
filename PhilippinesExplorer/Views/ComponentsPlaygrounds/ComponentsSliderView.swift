//
//  ComponentsSliderView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/30/25.
//

import SwiftUI

struct ComponentsSliderView: View {
    @State private var sliderValue: Double = 0
    @State private var showBackground: Bool = true
    
    var body: some View {
        VStack(spacing: 36) {
            Slider(value: $sliderValue, in: 0...100)
            
            Slider(value: $sliderValue, in: 0...100)
                .tint(.orange)
            
            Slider(
                value: $sliderValue,
                in: 0...100,
                label: {
                    Label("Label", systemImage: "smartphone")
                },
                minimumValueLabel: {
                    Text("Minimum Label")
                },
                maximumValueLabel: {
                    Text("Maximum Label")
                }
            )
            
            Slider(value: $sliderValue, in: 0...100, step: 10)
            
            GroupBox {
                Slider(value: $sliderValue, in: 0...100)
            }
            .backgroundStyle(Material.ultraThin)
            
            
            GroupBox {
                Slider(value: $sliderValue, in: 0...100)
                    .padding()
            }
            .backgroundStyle(
                LinearGradient(
                    colors: [Color.red, Color.orange, Color.teal],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .tint(.yellow)
            
        }
        .foregroundStyle(showBackground ? .white : .black)
        .padding(.horizontal)
        .background {
            if showBackground {
                Image(.luzonBanaue)
                    .blur(radius: 10)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    
                    withAnimation {
                        showBackground.toggle()
                    }
                }) {
                    Image(systemName: showBackground ? "eye.slash" : "eye")
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ComponentsSliderView()
    }
}
