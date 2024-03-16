//
//  ImageView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Text("Image View")
            .font(.title)
            .padding()
            .bold()
        
        
        Image(systemName: "figure")
            .font(.system(size: 50))
    }
}

#Preview {
    ImageView()
}
