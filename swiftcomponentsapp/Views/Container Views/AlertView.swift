//
//  AlertView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct AlertView: View {
    @State var isPresented: Bool = false
    @State var isPresentedMulti: Bool = false
    
    var body: some View {
        VStack {
            Text("Alert View")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .bold()
            
            Button(action: {
                isPresented = true
            }, label: {
                Text("Show Alert")
            })
            .padding()
            
            
            Button(action: {
                isPresentedMulti = true
            }, label: {
                Text("Show Multi-Option Alert")
            })

        }
        .alert("Alert Title", isPresented: $isPresented) {
            Button("Cancel", role: .cancel) {
                isPresented = false
            }
            
            Button("Delete", role: .destructive) {
                isPresented = false
            }
        } message: {
            Text("Test Message")
        }
        
        .alert("Multi-Alert Title", isPresented: $isPresentedMulti) {
            Button("Save to iCloud", role: nil) {
                isPresentedMulti = false
            }
            
            Button("Save to Files", role: nil) {
                isPresentedMulti = false
            }
            
            Button("Cancel", role: .cancel) {
                isPresentedMulti = false
            }
            
            Button("Delete", role: .destructive) {
                isPresentedMulti = false
            }
        } message: {
            Text("Where would you like to save this file?")
        }
    }
}

#Preview {
    AlertView()
}
