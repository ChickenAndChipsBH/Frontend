//
//  VUFun.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VUFun: View {
    var body: some View {
        LazyVStack {
            // Fun Upgrades
            CUpgradeable(title: "Dart Board", description: "Classic pub game.", price: 500)
            CUpgradeable(title: "Pool Table", description: "Keep customers in the pub by giving them a pool table.", price: 2500)
            CUpgradeable(title: "Speakers", description: "Save your vocal cords by investing in some crystal clear speakers.", price: 5500)
            CUpgradeable(title: "TVs", description: "Make sure to pay your TV license.", price: 10000)
            CUpgradeable(title: "Live Band", description: "Attract the crowds with a live band every night.", price: 15000)
        }
    }
}

#Preview {
    VUFun()
}
