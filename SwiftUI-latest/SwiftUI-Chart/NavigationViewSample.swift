//
//  NavigationView.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import SwiftUI

struct NavigationViewSample: View {
    @State private var path: [WeatherData] = []
    
    @State private var users: [WeatherData] =
    [.init(year: 2021, month: 7, day: 1, temperature: 19.0)]
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: "Text Item") {
                    Text("Text Item")
                }
                NavigationLink(value: Color.red) {
                    Text("Red color")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Color.self) { item in
                WeatherView()
            }
            .navigationDestination(for: String.self) { item in
                Text("This is the detail view for \(item)")
            }
        }
    }
}

struct NavigationViewSample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewSample()
    }
}
