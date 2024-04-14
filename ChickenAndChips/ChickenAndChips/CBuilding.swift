//
//  CBuilding.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CBuilding: View {

    @EnvironmentObject var singleton: HSingleton
    @State var pubImage = "pub1"

    var body: some View {
        ZStack {
            Image(singleton.pubImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            // var plants = false
            if singleton.upgradesDone.contains("Plants") {
                Image("plant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.2)
                // if bigger pub then add 2 plants
                if singleton.pubLevel > 1 {
                    Image("plant")

                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .offset(x: -300, y: -150)
                }
            }
            if singleton.upgradesDone.contains("Outdoor Seating") {
                Image("chairs")
                    .resizable()

                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.3)
                    .offset(x: -200, y: 100)
            }
        }
        .onAppear {
            switch singleton.pubLevel { // check what pub level, then check the popularity to choose appropriate texture
            case 1:
                if singleton.rating < 1.0 { singleton.pubImage = "pub1" }
                else if singleton.rating < 2.5 { singleton.pubImage = "pub11" }
                else if singleton.rating < 4.0 { singleton.pubImage = "pub12" }
                else { singleton.pubImage = "pub13" }
            case 2:
                if singleton.rating < 1.0 { singleton.pubImage = "pub2" }
                else if singleton.rating < 2.5 { singleton.pubImage = "pub21" }
                else if singleton.rating < 4.0 { singleton.pubImage = "pub22" }
                else { singleton.pubImage = "pub23" }
            case 3:
                if singleton.rating < 1.0 { singleton.pubImage = "pub3" }
                else if singleton.rating < 2.5 { singleton.pubImage = "pub31" }
                else if singleton.rating < 4.0 { singleton.pubImage = "pub32" }
                else { singleton.pubImage = "pub33" }
            default:
                // error
                singleton.pubImage = "pub33"
            }
        }
    }
}

#Preview {
    CBuilding()
}
