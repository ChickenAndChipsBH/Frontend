//
//  SJuicyButtonStyle.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct SJuicyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .font(.headline)
            .shadow(color: .black, radius: 1)
            //.padding()
            .padding([.top, .bottom], 5)
            .background(Image("wood box").resizable().aspectRatio(contentMode: .fill))
            //.background(Color.red)
            .foregroundStyle(.white)
            .padding([.top, .bottom], 5)
            .clipShape(Capsule())
    }
}

