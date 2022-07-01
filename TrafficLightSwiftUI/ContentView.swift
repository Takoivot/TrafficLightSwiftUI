//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Артур Сахбиев on 01.07.2022.
//

import SwiftUI

enum CurrentLight {case red, yellow, green}

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var titelButton = "START"
    
    @State private var redOpacity = 0.2
    @State private var yellowOpacity = 0.2
    @State private var greenOpacity = 0.2
   
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                CircleLight(
                    color: .red,
                    opacity: redOpacity)
                CircleLight(
                    color: .yellow,
                    opacity: yellowOpacity)
                CircleLight(
                    color: .green,
                    opacity: greenOpacity)
              Spacer()
                StartNextButton(title: titelButton){
                    switch  currentLight {
                    case .red :
                        titelButton = "NEXT"
                        redOpacity = 1.0
                        greenOpacity = 0.2
                        currentLight = CurrentLight.yellow
                    case .yellow:
                        redOpacity = 0.2
                        yellowOpacity = 1.0
                        currentLight = CurrentLight.green
                    case .green:
                        yellowOpacity = 0.2
                        greenOpacity = 1.0
                        currentLight = CurrentLight.red
                    }
                }
            }.padding()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
