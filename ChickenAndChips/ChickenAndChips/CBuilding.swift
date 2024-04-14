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
            switch singleton.pubLevel {
                case 1:
                    pubImage = "pub1"
                case 2:
                    pubImage = "pub2"
                case 3:
                    pubImage = "pub3"
                default:
                    // error
                    pubImage = "pub33"
            }
            Image(pubImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
    }
}

#Preview {
    CBuilding()
}
