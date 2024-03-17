//
//  LinkView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Text("Link View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        HStack{
            Image(systemName: "globe")
            
            Link("View My Portfolio",
                 destination: URL(string: "https://oviematthew.com/")!)
            .foregroundColor(.black)
        }
    }
}

#Preview {
    LinkView()
}
