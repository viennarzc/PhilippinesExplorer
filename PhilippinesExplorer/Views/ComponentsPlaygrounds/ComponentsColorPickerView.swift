//
//  ComponentsColorPickerView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/4/25.
//

import SwiftUI

struct ComponentsColorPickerView: View {
    @State var selectedColor: Color = .blue
    @Namespace var animation
    @State var show: Bool = false
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 100)
            TabView {
                VStack(spacing: 100) {
                    
                    HStack {
                        ColorPicker("Picker", selection: $selectedColor, supportsOpacity: true)
                            .padding()
                            .glassEffect()
                        
                    }
                    .padding()
                    
                }
                .frame(maxHeight: .infinity)
                
                VStack {
                    GlassEffectContainer(spacing: 100) {
                        Button {
                            withAnimation {
                                show.toggle()
                                
                            }
                             
                        } label: {
                            Text("Button")
                        }
                        .buttonStyle(.glass)
                        
                        HStack {
                            ColorPicker("Picker", selection: $selectedColor, supportsOpacity: true)
                                .padding()
                                .glassEffect(.regular, in: Capsule())
                                .glassEffectID("picker", in: animation)
                                .tint(.red)
                        }
                        .padding()
                        
                        if show {
                            Text("Population: 2000000")
                                .glassEffect(
                                    .regular,
                                    in: RoundedRectangle(cornerRadius: 25)
                                )
                                .glassEffectID("subtext", in: animation)
                                .glassEffectTransition(.matchedGeometry)
                            
                            Button {
                                withAnimation {
                                    show = false
                                    
                                }
                                
                            } label: {
                                Text("Button")
                            }
                            .buttonStyle(.glass)
                            
                            .glassEffectID("button", in: animation)
                            .glassEffectTransition(.matchedGeometry)
                            
                        }
                    }
                    
                    GlassEffectContainer(spacing: 10) {
                        VStack {
                            
                            Text("Name")
                                .font(.largeTitle)
                                .frame(width: UIScreen.main.bounds.width, height: 60)
                                .glassEffect(
                                    .regular,
                                    in: RoundedRectangle(cornerRadius: 25)
                                )
                                
                                .glassEffectID("island", in: animation)
                            
                            if show {
                                Text("Population: 2000000")
                                    .glassEffect(
                                        .regular,
                                        in: RoundedRectangle(cornerRadius: 25)
                                    )
                                    .glassEffectID("subtext", in: animation)
                                    .glassEffectTransition(.matchedGeometry)
                                
                            }
                            
                        }
                    }
                }
                
            }
            .tabViewStyle(.page)
            .frame(minHeight: 600, maxHeight: .infinity)
        }
        .background {
            Image(.luzonMetromanila)
        }
    }
}

#Preview {
    ComponentsColorPickerView()
}
