//
//  ProgressView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ProgressViewView: View {
    @State private var progress = 0.2
       
       var body: some View {
           VStack {
               Text("ProgressView")
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                   .padding()
                   .bold()
               
               ProgressView(value: progress)
                   .padding()
                   .tint(.black)
               
               Button("More") { progress += 0.05 }
                   .padding()
                   .buttonStyle(.borderedProminent)
                   .tint(.black)
           }
       }
   }


#Preview {
    ProgressViewView()
}
