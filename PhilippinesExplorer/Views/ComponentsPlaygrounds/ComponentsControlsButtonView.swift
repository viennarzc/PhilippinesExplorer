//
//  ComponentsControls1View.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct ComponentsControlsButtonView: View {
    enum ButtonShapeModel: Identifiable, CaseIterable {
        case roundendRectangle
        case circle
        case capsule
        
        var id: String { title }
        var title: String {
            switch self {
                case .roundendRectangle: return "Roundend Rectangle"
            case .circle: return "C"
            case .capsule: return "Capsule"
            }
        }
        
        var buttonBorderShape: ButtonBorderShape {
            switch self {
            case .roundendRectangle:
                return .roundedRectangle
            case .circle:
                return .circle
            case .capsule:
                return .capsule
            }
        }
        
        var systemImageName: String {
            switch self {
            case .roundendRectangle:
                return "square.and.arrow.up"
            case .circle:
                return "circle.fill"
            case .capsule:
                return "capsule"
            }
        }
    }
    
    @State private var showBackground = true
    
    private var buttonShapeModels: [ButtonShapeModel] = .init([
        .capsule,
        .circle,
        .roundendRectangle
    ])
    
    @State private var selectedButtonShapeModel: ButtonShapeModel = .roundendRectangle
    
    var body: some View {
        ScrollView {
            VStack(spacing: 32) {
                Button {
                    
                } label: {
                    Text("Plain Button")
                }
                .buttonStyle(.plain)
                
                Button {
                    
                } label: {
                    Text("Bordered Prominent Button")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    
                } label: {
                    Text("Borderless Button")
                }
                .buttonStyle(.borderless)
                
                Button {
                    
                } label: {
                    Text("Bordered Button")
                }
                .buttonStyle(.bordered)
                
                Button {
                    
                } label: {
                    Text("Glass Button")
                }
                .buttonStyle(.glass)
                
                Button {
                    
                } label: {
                    Text("Glass Button")
                }
                .buttonStyle(.glass)
                .tint(.red)
                
                
                Divider()
                
                
                Picker(
                    "Button Shape",
                    selection: $selectedButtonShapeModel.animation(.bouncy)
                ) {
                    ForEach(buttonShapeModels) { shapeModel in
                        Image(systemName: shapeModel.systemImageName)
                            .tag(shapeModel)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Button {
                   
                    
                } label: {
                    Text("\(selectedButtonShapeModel.title)")
                        .padding()
                }
                .buttonStyle(.glass)
                .buttonBorderShape(selectedButtonShapeModel.buttonBorderShape)
                
            }
            .frame(maxWidth: .infinity)
            

        }
        .safeAreaPadding(.top, 60)
        .background {
            if showBackground {
                Image(.luzonMetromanila)
            }
        }
        
    }
}

#Preview {
    ComponentsControlsButtonView()
}
