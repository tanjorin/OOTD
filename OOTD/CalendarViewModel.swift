//
//  CalendarViewModel.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

class CalendarViewModel: ObservableObject {
    @Published var dailyOutfits: [DailyOutfit] = []
    
    func getOutfit(for date: Date) -> DailyOutfit? {
        return dailyOutfits.first { Calendar.current.isDate($0.date, inSameDayAs: date) }
    }
    
    // This is a placeholder for actual weather data fetching
    func weatherIcon(for condition: WeatherCondition) -> Image {
        switch condition {
        case .sunny:
            return Image(systemName: "sun.max.fill")
        case .rainy:
            return Image(systemName: "cloud.rain.fill")
        case .cloudy:
            return Image(systemName: "cloud.fill")
        case .snowy:
            return Image(systemName: "snow")
        }
    }
}
