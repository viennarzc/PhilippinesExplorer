//
//  ComponentsPresentationsView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/7/25.
//

import SwiftUI

struct ComponentsPresentationsView: View {
    @State private var showAlert = false
    @State private var showActionSheet = false
    @State private var popoverIsPresented: Bool = false
    @State private var presentSheet: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 32) {
                Button {
                    showAlert = true
                    
                } label: {
                    Text("Present Alert")
                }
                .tint(.pink)
                
                Button {
                    showActionSheet = true
                } label: {
                    Text("Present Action Sheet")
                }
                .tint(.pink)
                .confirmationDialog(
                    "Confirmation",
                    isPresented: $showActionSheet) {
                        Button("OK") {
                            
                        }
                        
                        Button("Destructive", role: .destructive) {
                            
                        }
                        
                        Button("Close", role: .close) {
                            
                        }
                        
                        Button("Confirm", role: .confirm) {
                            
                        }
                    }
                
                Button {
                    popoverIsPresented = true
                } label: {
                    Text("Present Popover")
                }
                .tint(.pink)
                .popover(isPresented: $popoverIsPresented, content: {
                    Text("Popover Content")
                        .padding()
                        .presentationDetents([.height(100), .medium, .large])
                })
                
                Button {
                    presentSheet = true
                } label: {
                    Text("Present Sheet")
                }
                .tint(.pink)
                .sheet(isPresented: $presentSheet) {
                    Text("Sheet Content")
                        .presentationDetents([.height(100), .medium, .large])
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.body.bold())
            .alert("Alert", isPresented: $showAlert) {
                Button("OK", role: .cancel) {
                    
                }
                
                Button("Destructive", role: .destructive) {
                    
                }
                
                Button("Close", role: .close) {
                    
                }
                
                Button("Confirm", role: .confirm) {
                    
                }
                
                Button("Button") {
                    
                }
                
                
            } message: {
                Text("Some Message Texts")
            }
    
        
        }
        .ignoresSafeArea(.all)

    }
}

#Preview {
    ComponentsPresentationsView()
}
