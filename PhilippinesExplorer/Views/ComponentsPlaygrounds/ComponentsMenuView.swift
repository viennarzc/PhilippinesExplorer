//
//  ComponentsMenuView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/3/25.
//

import SwiftUI

struct ComponentsMenuView: View {
    @State private var selectedBackgroundPhoto: ImageBackground = .mtApo
    @State private var showBackground: Bool = false
    @State private var selectedRegion: String = "NCR"

    @State private var selectedOption: Option = .food
    @State private var selectedSub: Vehicle? = nil

    enum Option: CaseIterable, Identifiable {
        var id: Self { self }

        case food
        case location
        case item
        case vehicle

        var imageSystemName: String {
            switch self {
            case .food:
                return "birthday.cake"
            case .location:
                return "map"
            case .item:
                return "square.and.arrow.up"
            case .vehicle:
                return "car"
            }
        }

        var displayTitle: String {
            switch self {
            case .food:
                return "Food"
            case .location:
                return "Location"
            case .item:
                return "Item"
            case .vehicle:
                return "Vehicle"
            }
        }
    }

    enum Vehicle: CaseIterable, Identifiable {
        var id: String { displayTitle }

        case car
        case motorcycle
        case jeepney
        case tricycle

        var displayTitle: String {
            switch self {
            case .car:
                return "Car"
            case .motorcycle:
                return "Motorcycle"
            case .jeepney:
                return "Jeepney"
            case .tricycle:
                return "Tricycle"
            }
        }

        var imageSystemName: String {
            switch self {
            case .car:
                return "car"
            case .motorcycle:
                return "motorcycle"
            case .jeepney:
                return "box.truck"
            case .tricycle:
                return "person.3"
            }
        }
    }

    var body: some View {
        ZStack {
            VStack(spacing: 120) {
                Menu {
                    ForEach(Option.allCases, id: \.self) { option in
                        Button {
                            selectedOption = option

                        } label: {
                            Label(
                                option.displayTitle,
                                systemImage: option.imageSystemName
                            )
                        }
                    }

                } label: {
                    Text("Menu")
                }

                Menu {
                    ForEach(Option.allCases, id: \.self) { option in
                        Button {
                            selectedOption = option

                        } label: {
                            Label(
                                option.displayTitle,
                                systemImage: option.imageSystemName
                            )
                        }
                    }

                    Menu {
                        ForEach(Vehicle.allCases, id: \.self) { option in
                            Button {
                                selectedSub = option

                            } label: {
                                Label(
                                    option.displayTitle,
                                    systemImage: option.imageSystemName
                                )
                            }
                        }
                    } label: {
                        Label("Submenu", systemImage: "car")
                    }

                } label: {
                    Text("Menu")
                }
                .foregroundStyle(.primary, .red)
                .padding()
                .glassEffect()

                Menu {
                    ForEach(Option.allCases, id: \.self) { option in
                        Button {
                            selectedOption = option

                        } label: {
                            Label(
                                option.displayTitle,
                                systemImage: option.imageSystemName
                            )
                        }
                    }

                } label: {
                    Text("Menu")
                }
                .padding()
                .glassEffect()

                Menu {
                    ForEach(Option.allCases, id: \.self) { option in
                        Button {
                            selectedOption = option

                        } label: {
                            Label(
                                option.displayTitle,
                                systemImage: option.imageSystemName
                            )
                        }
                    }

                } label: {
                    Text("Menu")
                }

                Menu("Menu with system Image", systemImage: "opticaldiscdrive") {
                    ForEach(Option.allCases, id: \.self) { option in
                        Button {
                            selectedOption = option

                        } label: {
                            Label(
                                option.displayTitle,
                                systemImage: option.imageSystemName
                            )
                        }
                    }
                }
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
        ComponentsMenuView()
    }
}
