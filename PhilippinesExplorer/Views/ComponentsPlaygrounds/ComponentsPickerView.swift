//
//  ComponentsPickerView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/2/25.
//

import SwiftUI

struct ComponentsPickerView: View {
    @State private var selectedRegion: String = "NCR"
    @State private var selectedBackgroundPhoto: ImageBackground = .mtApo
    @State private var showBackground: Bool = false
    
    
    enum ImageBackground: Identifiable {
        var id: String { name }
        
        case mtApo
        case banaue
        
        var name: String {
            switch self {
            case .banaue: "Banaue"
            case .mtApo: "Mount Apo"
            }
        }
        var image: ImageResource {
            switch self {
            case .banaue: ImageResource.luzonBanaue
            case .mtApo: ImageResource.mindanaoMtapo
            }
        }
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 32) {
                Picker(selection: $selectedRegion) {
                    Text("NCR").tag(String("NCR"))
                    Text("Ilocos Region").tag(String("Ilocos Region"))
                    Text("Central Luzon").tag(String("Central Luzon"))
                    Text("SOCCSKSARGEN").tag(String("SOCCSKSARGEN"))
                    Text("BARMM").tag(String("BARMM"))
                } label: {
                    Text("Select")
                }
                .glassEffect()
                .tint(.white)
                
                Picker(selection: $selectedRegion) {
                    Text("NCR").tag(String("NCR"))
                    Text("Ilocos Region").tag(String("Ilocos Region"))
                    Text("Central Luzon").tag(String("Central Luzon"))
                    Text("SOCCSKSARGEN").tag(String("SOCCSKSARGEN"))
                    Text("BARMM").tag(String("BARMM"))
                } label: {
                    Text("Select")
                }
                .glassEffect()
                .pickerStyle(.segmented)
                
                
                Picker(selection: $selectedRegion) {
                    Text("NCR").tag(String("NCR"))
                    Text("Ilocos Region").tag(String("Ilocos Region"))
                    Text("Central Luzon").tag(String("Central Luzon"))
                    Text("SOCCSKSARGEN").tag(String("SOCCSKSARGEN"))
                    Text("BARMM").tag(String("BARMM"))
                } label: {
                    Text("Select")
                }
                .tint(.white)
                .pickerStyle(.wheel)
                
                Picker(selection: $selectedRegion) {
                    Text("NCR").tag(String("NCR"))
                    Text("Ilocos Region").tag(String("Ilocos Region"))
                    Text("Central Luzon").tag(String("Central Luzon"))
                    Text("SOCCSKSARGEN").tag(String("SOCCSKSARGEN"))
                    Text("BARMM").tag(String("BARMM"))
                    
                    Picker("Sub Picker", selection: $selectedRegion) {
                        Text("Item 1").tag(String("Item 1"))
                        Text("Item 2").tag(String("Item 2"))
                        
                        Menu {
                            Text("Menu").tag(String("Menu"))
                            
                        } label: {
                            Text("Menu Item")
                        }

                    }
                    
                } label: {
                    Text("Select")
                }
                .pickerStyle(.menu)
                .glassEffect()
                .tint(.white)
                
                
            }
            .padding(.horizontal)
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
        ComponentsPickerView()
        
    }
}
