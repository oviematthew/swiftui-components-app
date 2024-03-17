//
//  NavigationView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct NavigationView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                NavigationLink(destination: Text(item)) {
                    Text(item)
                }
            }
            .navigationTitle("Navigation View")
        }
    }
}

#Preview {
    NavigationView()
}
