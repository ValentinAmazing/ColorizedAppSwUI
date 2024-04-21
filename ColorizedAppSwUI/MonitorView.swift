//
//  monitorView.swift
//  ColorizedAppSwUI
//
//  Created by Valentin on 20.04.2024.
//

import SwiftUI

struct MonitorView: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundStyle(color)
            .frame(height: 170)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.white, lineWidth: 7)
            )
    }
}

struct monitorView_Previews: PreviewProvider {
    static var previews: some View {
        MonitorView(color: .green)
    }
}
