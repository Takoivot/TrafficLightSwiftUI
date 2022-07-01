//
//  Circle.swift
//  TrafficLightSwiftUI
//
//  Created by Артур Сахбиев on 01.07.2022.
//

import SwiftUI

struct CircleLight: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
       
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleLight(color: .green, opacity: 0.2)
    }
}
