//
//  ContentView.swift
//  ColorizedAppSwUI
//
//  Created by Valentin on 20.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 1...255)
    @State private var greenSliderValue = Double.random(in: 1...255)
    @State private var blueSliderValue = Double.random(in: 1...255)

    private let maxSladerValue = 255.0

    var body: some View {
        VStack(spacing: 20) {
            MonitorView(color: Color(
                red: redSliderValue / maxSladerValue,
                green: greenSliderValue / maxSladerValue,
                blue: blueSliderValue / maxSladerValue
            ))
            .padding(.bottom, 50)
            VStack{
                ColorSliderView(sliderValue: $redSliderValue)
                    .accentColor(.red)
                ColorSliderView(sliderValue: $greenSliderValue)
                    .accentColor(.green)
                ColorSliderView(sliderValue: $blueSliderValue)
                    .accentColor(.blue)
            }
            Spacer()
        }
        .padding()
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
