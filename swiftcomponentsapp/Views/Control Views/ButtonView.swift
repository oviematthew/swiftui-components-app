//
//  ButtonView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Text("Button View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Button("Hello") {}
        .buttonStyle(.borderedProminent)
        .tint(.black)
    }
}

#Preview {
    ButtonView()
}
