//
//  ComponentsExploreListView.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/28/25.
//

import SwiftUI

struct ComponentsExploreListView: View {
    struct Item: Identifiable {
        var id: UUID = UUID()
        var title: String
        var imageSystemName: String
    }
    
    
    @State private var items: [Item] = []
    
    var body: some View {
        List {
            ForEach(items) { item in
                HStack {
                    Image(systemName: item.imageSystemName)
                        .foregroundColor(.blue)
                        .font(.system(size: 24))
                        .frame(width: 32, height: 32)
                    Text(item.title)
                }
                .backgroundStyle(Color.red)
            }
            
        }
        .glassEffect()
        .background(content: {
            Image(.luzonBanaue)
        })
        .listRowBackground(Image(.luzonBanaue))
        .onAppear {
            items = [
                .init(title: "Button", imageSystemName: "square.and.arrow.up"),
                .init(title: "Image", imageSystemName: "photo"),
                .init(title: "Text", imageSystemName: "textformat"),
            ]
        }
    }
}

#Preview {
    ComponentsExploreListView()
}
