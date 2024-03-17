//
//  TextView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct TextView: View {
    var name: String = "Matthew Ovie Enamuotor"
    var body: some View {
        Text("Text View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        // Single Line
        Text("Hi there, I am \(name)")
            .foregroundColor(.white)
            .font(.callout)
            .padding()
            .background(.black)
        
        // Multi line
        Text("Hello, \(name)!\nThanks for using our app. \n\nWe hope you have a great experience.")
            .foregroundColor(.white)
            .font(.callout)
            .padding()
            .background(Color.black)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    TextView()
}
