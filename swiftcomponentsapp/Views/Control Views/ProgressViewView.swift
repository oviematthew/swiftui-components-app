//
//  ProgressView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct ProgressViewView: View {
    var body: some View {
        VStack(spacing: 30) {
            ProgressViewView()
            LinearProgressDemoView()
            DateRelativeProgressDemoView()
        }
        .padding()
    }
}

struct LinearProgressDemoView: View {
    @State private var progress = 0.5

    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("More") { progress += 0.05 }
        }
    }
}

struct DateRelativeProgressDemoView: View {
    let workoutDateRange = Date()...Date().addingTimeInterval(5*60)


    var body: some View {
         ProgressView(timerInterval: workoutDateRange) {
             Text("Workout")
         }
         .tint(.green)
    }
}


#Preview {
    ProgressViewView()
}
