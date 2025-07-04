//
//  ComponentsDatePickerView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 7/3/25.
//

import SwiftUI

struct ComponentsDatePickerView: View {
    @State private var selectedBackgroundPhoto: ImageBackground = .mtApo
    @State private var showBackground: Bool = true
    @State private var selectedDate: Date = .now

    var body: some View {
        ZStack {
            TabView {
                VStack {
                    GroupBox {
                        DatePicker(
                            "Date Picker",
                            selection: $selectedDate,
                            displayedComponents: [.hourAndMinute, .date]
                        )
                    }
                    .padding()
                }

                VStack {
                    GroupBox {
                        Text("With Glass effect")
                    }

                    DatePicker(
                        "Date Picker",
                        selection: $selectedDate,
                        displayedComponents: [.hourAndMinute, .date]
                    )
                    .padding(.horizontal)
                    .glassEffect()
                    .padding(.horizontal)
                }

                VStack {
                    GroupBox {
                        Text("Graphical date picker style + Glass Effect")
                    }
                    GlassEffectContainer {
                        DatePicker(
                            "Date Picker",
                            selection: $selectedDate,
                            displayedComponents: [.hourAndMinute, .date]
                        )
                        .padding()
                        .datePickerStyle(.graphical)
                        .glassEffect()
                    }
                    .padding()
                }

                VStack {
                    GroupBox {
                        Text("Graphical date picker style + ultraThinMaterial")
                    }

                    GroupBox {
                        DatePicker(
                            "Date Picker",
                            selection: $selectedDate,
                            displayedComponents: [.hourAndMinute, .date]
                        )
                        .padding()
                        .datePickerStyle(.graphical)
                    }
                    .padding()
                    .backgroundStyle(.ultraThinMaterial)
                }

                VStack {
                    GroupBox {
                        Text("Graphical date picker style in GroupBox")
                    }

                    GroupBox {
                        DatePicker(
                            "Date Picker",
                            selection: $selectedDate,
                            displayedComponents: [.hourAndMinute, .date]
                        )
                        .padding()
                        .datePickerStyle(.graphical)
                    }
                    .padding()
                }


                VStack {
                    GroupBox {
                        Text("Wheel date picker style in GroupBox")
                    }
                    GroupBox {
                        DatePicker(
                            "Date Picker",
                            selection: $selectedDate,
                            displayedComponents: [.hourAndMinute, .date]
                        )
                        .padding()
                        .datePickerStyle(.wheel)
                    }
                    .padding()
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
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
        ComponentsDatePickerView()
    }
}
