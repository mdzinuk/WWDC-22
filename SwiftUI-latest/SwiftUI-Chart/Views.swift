//
//  Views.swift
//  SwiftUI-Chart
//
//  Created by Mohammad Arafat Hossain on 19/08/22.
//

import SwiftUI

struct SheetContent: View {
    var body: some View {
        VStack {
            Spacer()
            WeatherView()
            ButtonGroupView().frame(height: 100)
        }
    }
}

struct WeatherView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            ZStack{
                
                Circle().fill(.white.gradient.shadow(.drop(color: .black, radius: 10)).shadow(.inner(radius: 3)))
                    .frame(width: 150, height: 150)
                Image(systemName: "moon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75)
            }
            Image(systemName: "trash")
                .frame(width: 100, height: 100)
                .background(in: Rectangle())
                .backgroundStyle(.clear)
                .foregroundStyle(.white.shadow(.drop(radius: 1, y: 3.0)))
                .font(.system(size: 50))
        }
    }
}

struct ButtonGroupView: View {
    var body: some View {
        ViewThatFits {
            VStack {
                Button(action: {}) {
                    Text("Tap Me!")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
 
                Button(action: {}) {
                    Text("Click Me!")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
            }
            .frame(maxHeight: 200)
 
 
            HStack {
                Button(action: {}) {
                    Text("Tap Me!")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .buttonStyle(.borderedProminent)
                .padding(.leading)
 
                Button(action: {}) {
                    Text("Click Me!")
                        .frame(maxWidth: .infinity)
                        .padding()
                }
                .tint(.gray)
                .buttonStyle(.borderedProminent)
                .padding(.trailing)
            }
            .frame(maxHeight: 100)
        }
    }
}
