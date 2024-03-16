//
//  ZStackView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        VStack {
            Text("VStack View")
                .font(.title)
                .padding()
                .bold()
            
                ZStack() {
                    RoundedRectangle(cornerRadius: 25.0)
                        .size(width: 250.0, height: 500)
                        .offset(CGSize(width: 70.0, height: 125.0))
                        .foregroundStyle(.red)
                        
                    RoundedRectangle(cornerRadius: 25.0)
                        .size(width: 250.0, height: 500)
                        .offset(CGSize(width: 40.0, height: 95.0))
                        .foregroundStyle(.green)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .size(width: 250.0, height: 500)
                        .offset(CGSize(width: 10.0, height: 65.0))
                        .foregroundStyle(.blue)
                    
                }
                .padding()
            
            .padding()
        }
    }
}

#Preview {
    ZStackView()
}
