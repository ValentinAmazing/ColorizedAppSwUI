//
//  ColorSliderView.swift
//  ColorizedAppSwUI
//
//  Created by Valentin on 20.04.2024.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
        
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
            Slider(value: $sliderValue, in: 1...255, step: 1)
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(222))
    }
}
