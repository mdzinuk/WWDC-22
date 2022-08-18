//
//  LayoutViewSample.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import SwiftUI

struct LayoutViewSample: View {
    var body: some View {
        Grid {
            GridRow {
                Color.red.gridCellColumns(2)
                Grid{
                    GridRow { Color.orange }
                    GridRow { Color.black }
                    GridRow { Color.purple }
                }
            }
            GridRow {
                Color.green
                Color.blue
            }
            GridRow {
                Color.yellow.gridCellColumns(3)
            }
        }
    }
}

struct LayoutViewSample_Previews: PreviewProvider {
    static var previews: some View {
        LayoutViewSample()
    }
}
