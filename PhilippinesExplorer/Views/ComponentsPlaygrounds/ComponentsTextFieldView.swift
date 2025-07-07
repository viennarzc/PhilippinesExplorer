//
//  ComponentsTextFieldView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/7/25.
//

import SwiftUI

struct ComponentsTextFieldView: View {
    @State private var textFieldValue: String = ""

    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height: 120)

                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [Color.teal, Color.blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(height: 150)
                
                Rectangle()
                    .fill(
                        LinearGradient(
                            colors: [Color.green, Color.orange],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 100, height: 150)
                
                Spacer()
            }
            .padding()
            ScrollView {
                Spacer(minLength: 120)
                VStack(spacing: 60) {
                    TextField("Textfield", text: $textFieldValue)
                        .padding()
                        .glassEffect()
                    
                    TextField("Textfield", text: $textFieldValue, axis: .vertical)
                        .padding()
                        .glassEffect()
                    
                    TextField("Textfield", text: $textFieldValue)
                        .padding()
                        .glassEffect()
                        .textFieldStyle(.roundedBorder)
                    
                    TextField(
                        "Textfield",
                        text: $textFieldValue,
                        axis: .vertical
                    )
                        .padding()
                        .glassEffect()
                        .textFieldStyle(.roundedBorder)
                    
                }
                .padding(.horizontal)
            }

        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    NavigationStack {
        ComponentsTextFieldView()
    }
}
