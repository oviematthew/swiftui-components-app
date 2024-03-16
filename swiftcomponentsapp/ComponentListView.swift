//
//  ComponentListView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ComponentListView: View {
    @StateObject var viewModel: ComponentsListViewModel = ComponentsListViewModel()
    
    var body: some View {
            NavigationStack {
                List {
                    ForEach(viewModel.sectionNames, id: \.self) { section in
                        Section(header: Text(section)) {
                            ForEach(viewModel.filterComponents(for: section)) { component in
                                NavigationLink(destination: ComponentsDetailView(component: component)) {
                                    Image(systemName: component.icon)
                                        .foregroundColor(.blue)
                                    Text(component.name)
                                }
                            }
                        }
                    }
                }
                .navigationTitle(viewModel.navTitle)
                .searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
                .onChange(of: viewModel.searchText) {
                    viewModel.searchComponents()
                }
            }
        }
    }


#Preview {
    ComponentListView()
}
