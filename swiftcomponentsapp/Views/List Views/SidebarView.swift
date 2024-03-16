//
//  SidebarView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct SidebarView: View {
    @State var showingFirstSection = true
    
    var body: some View {
            VStack {
                Text("List - Sidebar View")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .bold()
                
                List {
                    Section(header: Text("Section 1")) {
                        Text("Item 1")
                        Text("Item 2")
                    }
                }
                .listStyle(.sidebar)
            }
        }
    }

#Preview {
    SidebarView()
}
