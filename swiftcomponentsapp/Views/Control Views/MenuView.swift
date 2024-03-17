//
//  MenuView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Text("Menu View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Menu {
            Button("Open in Preview", action: openInPreview)
            Button("Save as PDF", action: saveAsPDF)
        } label: {
            Label("File Options", systemImage: "doc.fill")
                .foregroundColor(.black)
        }
    }
    
    func openInPreview(){
    }
    func saveAsPDF(){
    }
}


#Preview {
    MenuView()
}
