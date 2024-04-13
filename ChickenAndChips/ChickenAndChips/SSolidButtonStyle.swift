//
//  SSolidButtonStyle.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct SSolidButtonStyle: ButtonStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .font(.headline)
            .shadow(color: .black, radius: 1)
            .padding()
            .background(color)
            .foregroundStyle(.white)
            //.padding()
            //.clipShape(Capsule())
    }
}
