//
//  StartNextButton.swift
//  TrafficLightSwiftUI
//
//  Created by Артур Сахбиев on 01.07.2022.
//

import SwiftUI



struct StartNextButton: View {
    let title : String
    let action: () -> Void
    
   
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title)
                .foregroundColor(Color.black)
                .padding()
                .background(Color.gray)
                .cornerRadius(20)
        }
    }
}

struct StartNextButton_Previews: PreviewProvider {
    static var previews: some View {
        StartNextButton(title: "START") {}
    }
}
