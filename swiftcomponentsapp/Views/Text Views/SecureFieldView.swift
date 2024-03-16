//
//  SecureFieldView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct SecureFieldView: View {
    @State private var password: String = "password"
    
    var body: some View {
        VStack {
            Text("SecureField View")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .bold()
            
            
                   Text("Enter your password:")
                       .padding(10)
                       .foregroundColor(.white)
                       .background(.black)
                   
                   SecureField("Password", text: $password)
                       .textFieldStyle(RoundedBorderTextFieldStyle())
                       .padding()
               }
               .padding()
    }
}

#Preview {
    SecureFieldView()
}
