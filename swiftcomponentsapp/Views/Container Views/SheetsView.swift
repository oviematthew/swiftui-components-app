//
//  SheetsView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct SheetsView: View {
    @State var isPresented: Bool = false
    @State var selectedDetent: PresentationDetent = .fraction(0.25)

    
    var body: some View {
        Text("Sheet View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        Button(action: {
            isPresented = true
        }, label: {
            Text("Show Sheet")
        })
        .buttonStyle(.borderedProminent)
        .foregroundColor(.white)
        .tint(.black)
        .padding()
        
        .sheet(isPresented: $isPresented, content: {
            VStack {
                Text("Sheet is Presented")
                    .font(.title)
                
                Button(action: {
                    isPresented = false
                }, label: {
                    Text("Dismiss")
                })
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .foregroundColor(.black)
                .padding()
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .presentationDetents([.medium, .large, .fraction(0.25)], selection: .constant(.fraction(0.25)))
            
        })
    }
}

#Preview {
    SheetsView()
}
