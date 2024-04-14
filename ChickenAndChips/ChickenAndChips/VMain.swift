//
//  VMain.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct VMain: View {
    @EnvironmentObject var singleton: HSingleton
    var body: some View {
        NavigationStack {
            ZStack {
                CBuilding()
                VStack {
                    CUserHUD()
                        .padding()
                    Spacer()
                    if singleton.showingResponseCorrectness {
                        CResponseResult()
                    }
                    CQuestion()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    VMain()
}
