//
//  ContentView.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 18/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChartViewSample()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            NavigationViewSample()
                .tabItem {
                    Image(systemName: "link.circle")
                    Text("Navigation")
                }
            
            LayoutViewSample()
                .tabItem {
                    Image(systemName: "square.grid.3x3.topleft.filled")
                    Text("Grid")
                }
            ShareLinkViewSample()
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Share")
                }
            GaugesViewSample()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
