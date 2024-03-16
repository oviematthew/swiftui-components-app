//
//  TextFieldView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct TextFieldView: View {
    @State private var username: String = ""

    var body: some View {
        Text("TextField View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        VStack{
            
            TextField(
                "Username",
                text: $username
            )
            .disableAutocorrection(true)
            .border(.secondary)
            .frame(width: 300)
            
            Button("Submit") {}
            .buttonStyle(.borderedProminent)
            .tint(.black)
        }
        
        
    }
}

#Preview {
    TextFieldView()
}
