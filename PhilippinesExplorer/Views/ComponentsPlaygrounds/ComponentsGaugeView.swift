//
//  ComponentsGaugeView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/4/25.
//

import SwiftUI

struct ComponentsGaugeView: View {
    @State private var selectedBackgroundPhoto: ImageBackground = .mtApo
    @State private var showBackground: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView {
                Spacer(minLength: 200)
                
                VStack(spacing: 64) {
                    
                    Gauge(value: 0.5, label: { Text("50%") })
                        .padding()
                        .glassEffect()
                    
                    Gauge(value: 0.2, label: { Text("20%") })
                        .padding()
                        .glassEffect()
                        .gaugeStyle(.accessoryCircular)
                    
                    Gauge(value: 0.8, label: { Text("80%") })
                        .padding()
                        .glassEffect()
                        .gaugeStyle(.accessoryCircularCapacity)
                    
                    Gauge(value: 0.7, label: { Text("70%") })
                        .padding()
                        .glassEffect()
                        .gaugeStyle(.accessoryLinear)
                    
                    Gauge(value: 0.8, label: { Text("80%") })
                        .padding()
                        .glassEffect()
                        .gaugeStyle(.accessoryLinearCapacity)
                    
                }
                .padding(.horizontal)
                
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Picker(selection: $selectedBackgroundPhoto) {
                    Text("Banaue").tag(ImageBackground.banaue)
                    Text("Mt Apo").tag(ImageBackground.mtApo)
                    
                } label: {
                    Text("test")
                }
                    .pickerStyle(SegmentedPickerStyle())
            }
            
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    
                    withAnimation {
                        showBackground.toggle()
                    }
                }) {
                    Image(systemName: showBackground ? "eye.slash" : "eye")
                }
            }
        }
        .ignoresSafeArea(.all)
        .background {
            if showBackground {
                Image(selectedBackgroundPhoto.image)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ComponentsGaugeView()
    }
}
