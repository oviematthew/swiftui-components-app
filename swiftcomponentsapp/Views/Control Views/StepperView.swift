//
//  StepperView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct StepperView: View {
    @State var count: Int = 0
    
    var body: some View {
        
        Text("Stepper View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
    
        Stepper("Stepper Value: \(count)", value: $count, in: 0...5)
            .padding()
    }
}

#Preview {
    StepperView()
}
