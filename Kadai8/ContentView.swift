//
//  ContentView.swift
//  Kadai8
//

import SwiftUI

struct ContentView: View {
    @State var value: Double = 50
    var body: some View {
        TabView {
            SliderPages(backgroundColor: .red, sliderValue: $value)
                .tabItem { Text("Item") }
            SliderPages(backgroundColor: .green, sliderValue: $value)
                .tabItem { Text("Item") }
        }
    }
}

struct SliderPages: View {
    let backgroundColor: Color
    private static let range = 0.0...100.0
    @Binding var sliderValue: Double

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
                .opacity(0.65)
            VStack {
                Text("\(sliderValue)").font(.title)
                Slider(value: $sliderValue, in: Self.range)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
