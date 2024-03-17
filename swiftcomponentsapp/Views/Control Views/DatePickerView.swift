//
//  DatePickerView.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 1997, month: 1, day: 1)
        let endComponents = DateComponents(year: 1997, month: 01, day: 27, hour: 00, minute: 00, second: 00)
        return calendar.date(from:startComponents)!
        ...
        calendar.date(from:endComponents)!
    }()
    
    var body: some View {
        Text("Picker View")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
            .bold()
        Divider()
        
        DatePicker("Date Picker", selection: $date, displayedComponents: [.date])
            .padding()
        
        Text("My Chosen Date is \(formattedDate(date))")
        Divider()
            .padding()
        
        DatePicker("Ranged Date Picker", selection: $date, in: dateRange, displayedComponents: [.date, .hourAndMinute])
            .padding()
        
        Text("My Chosen Date is \(formattedDateAndTime(date))")
        Divider()
            .padding()
        
        
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MMM-yyyy"
        return formatter.string(from: date)
    }
    
    private func formattedDateAndTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd, HH:mm:ss"
        return formatter.string(from: date)
    }
}

#Preview {
    DatePickerView()
}
