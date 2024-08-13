//
//  Models.swift
//  OOTD
//
//  Created by ♔ Temi Anjorin on 8/12/24.
//

import SwiftUI

enum WeatherCondition: String {
    case sunny = "Sunny"
    case rainy = "Rainy"
    case cloudy = "Cloudy"
    case snowy = "Snowy"
    // Add other weather conditions as needed
}

struct DailyOutfit {
    var date: Date
    var pieces: [LockerItem] // Items worn on that day
    var weather: WeatherCondition
}
