//
//  ColorPickerView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var bgColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        Text("Picker View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
            .foregroundStyle(bgColor)
        
        ColorPicker("Choose Title Color", selection: $bgColor)
            .padding()
    }
}

#Preview {
    ColorPickerView()
}
