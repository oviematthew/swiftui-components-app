//
//  ComponentListView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ComponentsListView: View {
    
    @StateObject var viewModel: ComponentsListViewModel = ComponentsListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Text Input / Output")) {
                    ForEach(viewModel.listData.filter {$0.section == "Text Input / Output"}) { component in
                        NavigationLink(destination: ComponentsDetailView(component: component)) {
                            ComponentsRowView(component: component)
                        }
                    }
                }
                
                Section(header: Text("Controls")) {
                    ForEach(viewModel.listData.filter {$0.section == "Controls"}) { component in
                        NavigationLink(destination: ComponentsDetailView(component: component)) {
                            ComponentsRowView(component: component)
                        }
                    }
                }
                
                Section(header: Text("Container Views")) {
                    ForEach(viewModel.listData.filter {$0.section == "Container Views"}) { component in
                        NavigationLink(destination: ComponentsDetailView(component: component)) {
                            ComponentsRowView(component: component)
                        }
                    }
                }
                
                Section(header: Text("List")) {
                    ForEach(viewModel.listData.filter {$0.section == "List"}) { component in
                        NavigationLink(destination: ComponentsDetailView(component: component)) {
                            ComponentsRowView(component: component)
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
    ComponentsListView()
}

