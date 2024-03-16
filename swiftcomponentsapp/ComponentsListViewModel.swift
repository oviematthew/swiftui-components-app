//
//  ComponentsListViewModel.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import Foundation
import SwiftUI

class ComponentsListViewModel: ObservableObject {
    var store: ComponentStore
    var searchText: String = ""
    var navTitle: String = ""
    var searchResults: [Component] = []
    
    init(store: ComponentStore = ComponentStore.testComponentStore, navTitle: String = "Components") {
        self.store = store
        self.navTitle = navTitle
    }
    
    
    var listData: [Component]{
        return searchText.isEmpty ? store.components : searchResults
    }

    var sectionNames: [String] {
        // Custom order for sections
        let customOrder = ["Text Input / Output", "Controls", "Container Views", "List"]
        
        // Filter sections based on the custom order
        return customOrder.filter { orderSection in
            store.components.contains(where: { $0.section == orderSection })
        }
    }

    // Display items
    func filterComponents(for section: String? = nil) -> [Component] {
        let filteredComponents: [Component]
        if searchText.isEmpty {
            filteredComponents = store.components
        } else {
            filteredComponents = searchResults
        }
        
        if let section = section {
            return filteredComponents.filter { $0.section == section }
        } else {
            return filteredComponents
        }
    }

    
    //search for component
    func searchComponents() {
        searchResults = store.components.filter({ $0.name.localizedCaseInsensitiveContains(searchText) })
        }
}

