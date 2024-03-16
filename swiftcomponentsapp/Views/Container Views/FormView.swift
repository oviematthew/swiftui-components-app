//
//  FormView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct FormView: View {
    @State private var name: String = "Matthew"
    
    var body: some View {
        Form {
            TextField("Username", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

#Preview {
    FormView()
}
