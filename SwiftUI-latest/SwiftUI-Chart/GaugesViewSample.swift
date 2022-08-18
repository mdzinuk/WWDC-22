//
//  GaugesViewSample.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import SwiftUI

struct GaugesViewSample: View {
    var body: some View {
        VStack(spacing: 20) {
            Gauge(value: 50, in: 0...100) {
                Text("accessoryCircular")
            }.gaugeStyle(.accessoryCircular).tint(.red)
            Gauge(value: 40, in: 0...100) {
                Text("accessoryCircularCapacity")
            }.gaugeStyle(.accessoryCircularCapacity).tint(.red)
            Gauge(value: 10, in: 0...100) {
                Text("linearCapacity")
            }.gaugeStyle(.linearCapacity).tint(.red)
            ButtonGroupView()
                .frame(height: 100)
            ButtonGroupView()
                .frame(height: 150)
        }.frame(height: 500, alignment: .center)
    }
}

struct GaugesViewSample_Previews: PreviewProvider {
    static var previews: some View {
        GaugesViewSample()
    }
}
