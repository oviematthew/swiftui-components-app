//
//  ComponentsListViewModel.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import Foundation
import SwiftUI
import Observation

@Observable
class ComponentsListViewModel: ObservableObject {
    var store: ComponentStore
    var searchText: String = ""
    var navTitle: String = ""
    var searchResults: [Component] = []
    
    
    //Initialize Store
    init(store: ComponentStore = ComponentStore.testComponentStore, navTitle: String = "Components") {
        self.store = store
        self.navTitle = navTitle
    }
    
    // Display Data
    var listData: [Component]{
        return searchText.isEmpty ? store.components : searchResults
    }
    
    
    // Search for component
    func searchComponents() {
        searchResults = store.components.filter({ $0.name.localizedCaseInsensitiveContains(searchText) })
    }
}

