//
//  VStackView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack {
            Text("VStack View")
                .font(.title)
                .padding()
                .bold()
            
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 200, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 200, height: 150)
                }
                .padding()
            }
            .padding()
        }
    }
}

#Preview {
    VStackView()
}
