//
//  ComponentsListViewModel.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import Foundation
import SwiftUI

class ComponentsListViewModel: ObservableObject {
    var componentStore: ComponentStore
    var searchText: String = ""
    var navTitle: String = "Components"
    var searchResults: [Component] = []

    init(componentStore: ComponentStore = ComponentStore.shared) {
        self.componentStore = componentStore
    }

    var sectionNames: [String] {
        // Custom order for sections
        let customOrder = ["Text Input / Output", "Controls", "Container Views", "List"]
        
        // Filter sections based on the custom order
        return customOrder.filter { orderSection in
            componentStore.components.contains(where: { $0.section == orderSection })
        }
    }

    //Display items
    func filterComponents(for section: String? = nil) -> [Component] {
        let filteredComponents = searchText.isEmpty ? componentStore.components : searchResults
        if let section = section {
            return filteredComponents.filter { $0.section == section }
        } else {
            return filteredComponents
        }
    }
    
    
    func searchComponents() {
        if searchText.isEmpty {
            searchResults = []
        } else {
            searchResults = componentStore.components.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

