//
//  NavigationOptions.swift
//  PhilippinesExplorer
//
//  Created by Viennarz Curtiz on 6/18/25.
//


import SwiftUI

/// An enumeration of navigation options in the app.
enum NavigationOptions: Equatable, Hashable, Identifiable {
    /// A case that represents viewing the app's major Islands
    case majorIslandGroups
    /// A case that represents viewing the app's favorites
    case favorites
    
    case playgrounds
    
    static let mainPages: [NavigationOptions] = [
        .majorIslandGroups,
        .favorites,
        .playgrounds
    ]
    
    var id: String {
        switch self {
        case .majorIslandGroups: "majorIslandGroups"
        case .favorites: "favorites"
        case .playgrounds: "playgrounds"
        }
    }
    
    var name: String {
        switch self {
            case .majorIslandGroups: "Major Islands"
            case .favorites: "Favorites"
            case .playgrounds: "Playgrounds"
        }
    }
    
    var symbolName: String {
        switch self {
        case .majorIslandGroups: "globe.asia.australia"
        case .favorites: "book.closed"
        case .playgrounds: "square.and.arrow.up.on.square.fill"
        }
    }
    
    /// A view builder that the split view uses to show a view for the selected navigation option.
    @MainActor @ViewBuilder func viewForPage() -> some View {
        switch self {
        case .majorIslandGroups: MainIslandGroupsView()
        case .favorites: FavoritesView()
        case .playgrounds: PlaygroundsListView()
        }
        
    }
}
