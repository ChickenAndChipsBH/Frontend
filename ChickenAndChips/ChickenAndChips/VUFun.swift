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
            CUpgradeable(title: "Dart Board", description: "Classic pub game. +5% rating boost", price: 500, ratingPercentageIncrease: 5)
            CUpgradeable(title: "Pool Table", description: "Keep customers in the pub by giving them a pool table. +10% rating boost", price: 2500, ratingPercentageIncrease: 10)
            CUpgradeable(title: "Speakers", description: "Save your vocal cords by investing in some crystal clear speakers. +10% rating boost", price: 5500, ratingPercentageIncrease: 10)
            CUpgradeable(title: "TVs", description: "Make sure to pay your TV license. +15% rating boost", price: 10000, ratingPercentageIncrease: 15)
            CUpgradeable(title: "Live Band", description: "Attract the crowds with a live band every night. +20% rating boost", price: 15000, ratingPercentageIncrease: 20)
        }
    }
}

#Preview {
    VUFun()
}
