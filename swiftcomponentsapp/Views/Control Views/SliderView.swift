//
//  SliderView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct SliderView: View {
    @State var volume: Double = 50.0
    @State var rating: Double = 5.0
    var body: some View {
        Text("Slider View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        
        
        Text("Continuous Slider")
            .font(.title)
        
        Text("Slider Value: \(volume)")
        
        Slider(value: $volume, in: 0...100) {
            Text("Volume")
        } minimumValueLabel: {
            Image(systemName: "speaker")
        } maximumValueLabel: {
            Image(systemName: "speaker.wave.3")
        }
        .padding()
        .tint(.black)
        
        Text("Stepped Slider")
            .font(.title)
        
        Text("Slider Value: \(rating)")
        
        Slider(value: $rating, in: 0...10, step: 1) {
            Text("Rating")
        } minimumValueLabel: {
            Text("0")
        } maximumValueLabel: {
            Text("10")
        }
        .padding()
        .tint(.black)

    }
}

#Preview {
    SliderView()
}
