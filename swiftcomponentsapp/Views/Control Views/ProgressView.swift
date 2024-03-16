//
//  ProgressView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ProgressView: View {
    @State private var progress = 0.5
    
    var body: some View {
            VStack {
                Text("ProgressView")
                    .font(.title)
                    .padding()
                
                ProgressView(value: progress)
                    .padding()
                
                Button("More") { progress += 0.05 }
                    .padding()
            }
        
    }
}

#Preview {
    ProgressView()
}
