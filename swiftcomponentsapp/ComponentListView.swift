//
//  ComponentListView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ComponentListView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Text Input / Output") {
                    NavigationLink(destination: TextView()) {
                            Image(systemName: "pencil.and.scribble")
                                .foregroundColor(.blue)
                            Text("Text")
                    }
                    NavigationLink(destination: LabelView()) {
                            Image(systemName: "tag")
                                .foregroundColor(.blue)
                            Text("Label")
                    }
                    NavigationLink(destination: TextFieldView()) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                            Text("TextField")
                    }
                    NavigationLink(destination: TextFieldView()) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                            Text("SecureField")
                    }
                    NavigationLink(destination: TextFieldView()) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                            Text("TextArea")
                    }
                    NavigationLink(destination: TextFieldView()) {
                            Image(systemName: "square.and.pencil")
                                .foregroundColor(.blue)
                            Text("Image")
                    }



                    
                }
                
                Section("Controls") {
                    
                }
                Section("Container Views") {
                    
                }
                Section("List") {
                    
                }
                
                
            }
            .navigationTitle("Components")
        }
    }
}

#Preview {
    ComponentListView()
}
