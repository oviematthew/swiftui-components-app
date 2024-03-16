//
//  ComponentsDetailView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI
import SafariServices

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
        guard let url = URL(string: "https://developer.apple.com/documentation/\(component.linkText)") else { return }
        
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let safariViewController = SFSafariViewController(url: url)
            windowScene.windows.first?.rootViewController?.present(safariViewController, animated: true, completion: nil)
        }
    }

}

#Preview {
    ComponentsDetailView(component: Component(name: "Text", icon: "pencil.and.scribble", linkText: "swiftui/text", section: "Text Input / Output", destination: AnyView(TextView())))
}
