//
//  HStackView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        VStack {
            Text("HStack View")
                .font(.title)
                .padding()
                .bold()
            
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                        .frame(width: 150, height: 150)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.blue)
                        .frame(width: 150, height: 150)
                }
                .padding()
            }
            .padding()
        }
    }
}


#Preview {
    HStackView()
}
