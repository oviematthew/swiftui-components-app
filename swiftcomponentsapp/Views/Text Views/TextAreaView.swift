//
//  TextAreaView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct TextAreaView: View {
    @State private var text: String = ""
    
    var body: some View{
        
        VStack {
            Text("TextArea View")
                .font(.title)
                .padding()
                .bold()
            
            Text("Enter your text:")
                .padding(.bottom, 10)
            
            TextEditor(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 200)
                .cornerRadius(8)
                .padding()
            
            Button("Clear Text") {
                clearText()
            }
            .buttonStyle(.borderedProminent)
            .tint(.black)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        .edgesIgnoringSafeArea(.all)
    }
    
    func clearText() {
        text = ""
    }
}

#Preview {
    TextAreaView()
}
