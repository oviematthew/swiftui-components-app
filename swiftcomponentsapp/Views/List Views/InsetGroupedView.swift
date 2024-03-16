//
//  InsetGroupedView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct InsetGroupedView: View {
    var body: some View {
        VStack {
            Text("List - InsetGroupedView")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .bold()
            
            List {
                Section(header: Text("Section 1")) {
                    Text("Item 1")
                    Text("Item 2")
                }
                Section(header: Text("Section 2")) {
                    Text("Item 3")
                    Text("Item 4")
                    Text("Item 5")
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

#Preview {
    InsetGroupedView()
}
