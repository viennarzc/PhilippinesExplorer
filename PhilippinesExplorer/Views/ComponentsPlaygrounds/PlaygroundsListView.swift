//
//  PlaygroundsListView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

enum PlaygroundsListDestination: CaseIterable, Equatable, Hashable, Identifiable {
    case togglesView
    case colorPickerView
    case buttonsView
    case datePickerView
    case formsView
    case listView
    case gaugeView
    case menuView
    case pickerView
    case playgroundView
    case playgroundView2
    case presentationView
    case progressView
    case sliderView
    case stepperView
    case textFieldView
    case playgroundsListView

    var id: String {
        String(describing: self)
    }

    var title: String {
        switch self {
        case .playgroundsListView:
            return "Playgrounds"
        default:
            return String(describing: self)
        }
    }

    @MainActor @ViewBuilder func viewForPage() -> some View {
        switch self {
        case .playgroundsListView:
            PlaygroundsListView()
        case .togglesView:
            ComponentControlsToggleView()
        case .colorPickerView:
            ComponentsPickerView()
        case .buttonsView:
            ComponentsControlsButtonView()

        case .datePickerView:
            ComponentsDatePickerView()
        case .formsView:
            ComponentsExploreFormsView()
        case .listView:
            ComponentsExploreListView()
        case .gaugeView:
            ComponentsGaugeView()
        case .menuView:
            ComponentsMenuView()
        case .pickerView:
            ComponentsPickerView()
        case .playgroundView:
            ComponentsPlaygroundView()
        case .playgroundView2:
            ComponentsPlaygroundView2()
        case .presentationView:
            ComponentsPresentationsView()
        case .progressView:
            ComponentsProgressView()
        case .sliderView:
            ComponentsSliderView()
        case .stepperView:
            ComponentsStepperView()
        case .textFieldView:
            ComponentsTextFieldView()
        }
    }
}

struct PlaygroundsListView: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(PlaygroundsListDestination.allCases, id: \.self) { destination in
                    NavigationLink {
                        destination.viewForPage()
                    } label: {
                        Text(destination.title)
                    }
                    
                }
            }
            .navigationTitle("Playgrounds List")
        }
    }
}

#Preview {
    PlaygroundsListView()
}
