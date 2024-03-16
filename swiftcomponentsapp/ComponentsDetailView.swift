//
//  ComponentsDetailView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ComponentsDetailView: View {
    let component: Component
    let viewModel = ComponentsListViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack{
            VStack {
                AnyView(component.destination)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(component.name)
                        .font(.headline)
                        .foregroundColor(.primary)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        openDocumentation()
                    }) {
                        Image(systemName: "doc.fill")
                    }
                }
            }
        }
    }
    
    private func openDocumentation() {
           guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/\(component.name.lowercased())") else { return }
           UIApplication.shared.open(url)
       }
}

#Preview {
    ComponentsDetailView(component: Component(name: "Text", icon: "pencil.and.scribble", section: "Text Input / Output", destination: AnyView(TextView())))
}
