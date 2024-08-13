//
//  CalendarView.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/5/24.
//

import SwiftUI

struct CalendarView: View {
    @EnvironmentObject var calendarViewModel: CalendarViewModel
    @State private var selectedDate: Date?
    
    let daysOfWeek = Calendar.current.weekdaySymbols

    var body: some View {
        NavigationView {
            VStack {
                // Display the week days
                HStack {
                    ForEach(daysOfWeek, id: \.self) { day in
                        VStack {
                            Text(day)
                                .font(.headline)
                            if let date = getDate(for: day) {
                                Text("\(Calendar.current.component(.day, from: date))")
                                    .font(.subheadline)
                                    .padding()
                            }
                        }
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding()
                
                // Display daily outfits for the selected date
                if let selectedDate = selectedDate,
                   let outfit = calendarViewModel.getOutfit(for: selectedDate) {
                    VStack {
                        Text("Outfit for \(formattedDate(selectedDate))")
                            .font(.headline)
                            .padding()

                        // Display weather icon
                        calendarViewModel.weatherIcon(for: outfit.weather)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                        
                        // Display outfit pieces
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(outfit.pieces) { item in
                                    Image(uiImage: item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(10)
                                        .padding(5)
                                }
                            }
                            .padding()
                        }
                    }
                }
            }
            .navigationTitle("Calendar")
        }
    }
    
    private func getDate(for day: String) -> Date? {
        // Assuming the first day of the week is Sunday
        let calendar = Calendar.current
        var components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date())
        components.weekday = daysOfWeek.firstIndex(of: day) ?? 0
        return calendar.date(from: components)
    }
    
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
            .environmentObject(CalendarViewModel())
    }
}
