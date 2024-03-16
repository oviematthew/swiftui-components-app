//
//  ToggleView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ToggleView: View {
    @State var toggleState: Bool = false
    
    var body: some View {
        Text("Toggle View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Toggle("Switch", isOn: $toggleState)
            .padding()
            .tint(.black)
            .frame(width: 300)
    }
}

#Preview {
    ToggleView()
}
