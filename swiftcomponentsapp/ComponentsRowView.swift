//
//  ComponentsRowView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ComponentsRowView: View {
    
    var component: Component
    
    var body: some View {
            HStack {
                Image(systemName: component.icon)
                    .foregroundColor(.blue)
                
                Text(component.name)
            }
        
    }
}

#Preview {
    ComponentsRowView(component: ComponentStore.testComponentStore.components[1])
}
