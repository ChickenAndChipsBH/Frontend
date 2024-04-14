//
//  CBuilding.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CBuilding: View {
    
    @EnvironmentObject var singleton: HSingleton

    var body: some View {
        ZStack {
            var pubImage;
            switch singleton.pubLevel { // check what pub level, then check the popularity to choose appropriate texture
                case 1:
                    if singleton.rating < 1.0 { pubImage = "pub1" }
                    else if singleton.rating < 2.5 { pubImage = "pub11" }
                    else if singleton.rating < 4.0 { pubImage = "pub12" }
                    else { pubImage = "pub13" }
                case 2:
                    if singleton.rating < 1.0 { pubImage = "pub2" }
                    else if singleton.rating < 2.5 { pubImage = "pub21" }
                    else if singleton.rating < 4.0 { pubImage = "pub22" }
                    else { pubImage = "pub23" }
                case 3:
                    if singleton.rating < 1.0 { pubImage = "pub3" }
                    else if singleton.rating < 2.5 { pubImage = "pub31" }
                    else if singleton.rating < 4.0 { pubImage = "pub32" }
                    else { pubImage = "pub33" }
                default:
                    // error
                    pubImage = "pub33"
            }
            Image(pubImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            var plants = false
            if singleton.upgradesDone.contains("Plants") {
                Image("plant")
                    .resizeable()
                    .aspectRatio(contentMode: .fit)
                // if bigger pub then add 2 plants
                if singleton.pubLevel > 1 {
                    Image("plant")
                        .resizeable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            if singleton.upgradesDone.contains("Outdoor Seating") {
                Image("chairs")
                    .resizeable()
                    .aspectRatio(contentMode: .fit)
            }
    }
}

#Preview {
    CBuilding()
}
