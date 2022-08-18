//
//  Models.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import Foundation

struct Amount: Identifiable {
    var month: String
    var amount: Double
    var id = UUID()
    var color: String
}

struct WeatherData: Identifiable, Hashable {
    let id = UUID()
    let date: Date
    let temperature: Double
    
    init(year: Int, month: Int, day: Int, temperature: Double) {
        self.date = Calendar.current.date(from: .init(year: year, month: month, day: day)) ?? Date()
        self.temperature = temperature
    }
}
