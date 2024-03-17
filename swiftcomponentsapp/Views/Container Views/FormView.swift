//
//  FormView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct FormView: View {
    @State private var name: String = "Matthew"
    @State private var password: String = "password"
    @State private var email: String = ""
    @State private var isToggled = false
    
    var body: some View {
        VStack {
            Text("Form View")
                .font(.title)
                .padding()
                .bold()
            
            Form {
                Section(header: Text("Account Information")) {
                    TextField("Username", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 5)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 5)
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 5)
                    
                    Toggle("Approve", isOn: $isToggled)
                    
                    Button("Sign in") {}
                        .buttonStyle(.borderedProminent)
                        .padding(.top, 5)
                    
                }
                
            }
            .frame(width: 350)
            
        }
        .padding()
    }
}

#Preview {
    FormView()
}
