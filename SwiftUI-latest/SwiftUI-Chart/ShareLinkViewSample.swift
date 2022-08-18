//
//  ShareLinkViewSample.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import SwiftUI

struct ShareLinkViewSample: View {
    let link = URL(string: "https://www.apple.com")!
    @State private var showSheet = false
    
    var body: some View {
        VStack(spacing: 10) {
            ShareLink(item: link)
            ShareLink(item: link) {
                Text("Share Without Icon")
            }
            ShareLink(item: link) {
                Label("Share With Custom Icon", systemImage: "arrow.up")
            }.presentationDetents([.medium])
            
            Button("BottomSheet sample") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                SheetContent()
                    .presentationDetents([.medium, .large])
            }
        }
    }
}

struct ShareLinkViewSample_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkViewSample()
    }
}
