//
//  LabelView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Text("Label View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Label("Just Some Servers", systemImage: "server.rack")
            .padding()
            .background(.black)
            .foregroundColor(.white)
    }
}

#Preview {
    LabelView()
}
