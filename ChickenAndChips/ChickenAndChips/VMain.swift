//
//  VMain.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct VMain: View {
    var body: some View {
        ZStack {
            Color.red
            VStack {
                CUserHUD()
                    .padding()
                Spacer()
                CQuestion()
                    .padding()
            }
        }
    }
}

#Preview {
    VMain()
}
