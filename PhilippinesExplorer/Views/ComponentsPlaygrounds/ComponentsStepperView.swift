//
//  ComponentsStepperView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/4/25.
//

import SwiftUI

struct ComponentsStepperView: View {
    @State private var stepperValue = 0
    
    var body: some View {
        ScrollView {
            Spacer(minLength: 200)
            
            VStack {
                Stepper(value: $stepperValue.animation(.bouncy), in: 0...100) {
                    Text("\(stepperValue)")
                        .font(.title.bold())
                        .contentTransition(.numericText())
                }
                .padding()
                .glassEffect()
            }
            .padding(.horizontal)
        }
        .background {
            Image(.visayasMagellan)
        }

    }
}

#Preview {
    ComponentsStepperView()
}
