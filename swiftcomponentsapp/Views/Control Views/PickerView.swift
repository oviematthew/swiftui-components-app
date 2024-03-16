//
//  PickerView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

enum color: String, CaseIterable, Identifiable {
    case black, orange, white
    var id: Self { self }
}

struct PickerView: View {
    @State var selectedColor: color = .orange
    
    var body: some View {
        Text("Picker View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Picker("Color", selection: $selectedColor) {
            ForEach(color.allCases) { flavor in
                Text(flavor.rawValue.capitalized)
            }
        }
        .tint(.black)
        
        Picker("Color", selection: $selectedColor) {
            ForEach(color.allCases) { flavor in
                Text(flavor.rawValue.capitalized)
            }
        }
        .pickerStyle(.wheel)
        
        Picker("Color", selection: $selectedColor) {
            ForEach(color.allCases) { flavor in
                Text(flavor.rawValue.capitalized)
            }
        }
        .pickerStyle(.palette)
        .padding()
        
        List {
            Picker("Color", selection: $selectedColor) {
                ForEach(color.allCases) { flavor in
                    Text(flavor.rawValue.capitalized)
                }
            }
        }
    }
}

#Preview {
    PickerView()
}
