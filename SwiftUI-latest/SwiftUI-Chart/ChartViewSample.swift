//
//  ChartView.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 18/08/22.
//

import SwiftUI
import Charts

struct ChartViewSample: View {
    var data: [Amount] = [
        .init(month: "March", amount: 100.00, color: "blue"),
        .init(month: "April", amount: 130.0, color: "green"),
        .init(month: "May", amount: 120.00, color: "orange"),
        .init(month: "June", amount: 120.00, color: "purple")]
    
    let watherData: [WeatherData] =
    [ WeatherData(year: 2021, month: 7, day: 1, temperature: 19.0),
      .init(year: 2021, month: 8, day: 1, temperature: 17.0),
      .init(year: 2021, month: 9, day: 1, temperature: 17.0),
      .init(year: 2021, month: 10, day: 1, temperature: 13.0),
      .init(year: 2021, month: 11, day: 1, temperature: 8.0),
      .init(year: 2021, month: 12, day: 1, temperature: 8.0),
      .init(year: 2022, month: 1, day: 1, temperature: 5.0),
      .init(year: 2022, month: 2, day: 1, temperature: 8.0),
      .init(year: 2022, month: 3, day: 1, temperature: 9.0),
      .init(year: 2022, month: 4, day: 1, temperature: 11.0),
      .init(year: 2022, month: 5, day: 1, temperature: 15.0),
      .init(year: 2022, month: 6, day: 1, temperature: 18.0)]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(watherData) { item in
                    LineMark(
                        x: .value("Month", item.date),
                        y: .value("Temp", item.temperature)
                    )
                }
            }.frame(height: 300)
            Chart {
                ForEach(data) { item in
                    BarMark(
                        x: .value("Month", item.month),
                        y: .value("Total", item.amount)
                    ).foregroundStyle(by: .value("Month Color", item.color))
                }
                ForEach(data) { item in
                    LineMark(
                        x: .value("Month", item.month),
                        y: .value("Total", item.amount)
                    ).foregroundStyle(by: .value("Month Color", item.color))
                }
            }.frame(height: 300)
        }
    }
}

struct ChartViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ChartViewSample()
    }
}
