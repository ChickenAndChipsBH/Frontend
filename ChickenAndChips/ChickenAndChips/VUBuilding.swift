//
//  VUBuilding.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VUBuilding: View {
    var body: some View {
        LazyVStack {
            // Building Upgrades
            CUpgradeable(title: "Relocate", description: "Upgrade your pub to a more wealthy location. Resets all upgrades. +£100 income", price: 200000, incomeIncrease: 100)
            CUpgradeable(title: "Outdoor Seating", description: "Increase capacity of the pub with outdoor seating... when its sunny. +10% rating boost", price: 1500, ratingPercentageIncrease: 10)
            CUpgradeable(title: "Neon Sign", description: "Nothing catches the attention of customers (and flies) than a bright neon sign. +15% rating boost", price: 4000, ratingPercentageIncrease: 15)
            CUpgradeable(title: "Plants", description: "Bring some life into the pub with some greenery. -5% rating decay", price: 500, ratingDecayDecrease: 5)
            CUpgradeable(title: "Micro Brewery", description: "Keep the pub hip and trendy by brewing your own craft IPAs. Don't worry, you don't need to know what hops are for the quiz questions. +150/sec", price: 5000, idleIncomeIncrease: 150)
        }
    }
}

#Preview {
    VUBuilding()
}
