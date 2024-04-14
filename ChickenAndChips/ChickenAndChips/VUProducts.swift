//
//  VUProducts.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VUProducts: View {
    var body: some View {
        LazyVStack {
            // Products Upgrades
            CUpgradeable(title: "Chicken N’ Chips", description: "Serve the team’s favourite meal. +£1 income", price: 800, incomeIncrease: 1)
            CUpgradeable(title: "Snake Bite", description: "Serve the classic SU Happy Hour drink. +£2 income", price: 500, incomeIncrease: 2)
            CUpgradeable(title: "Cocktails", description: "Charge loads for cocktails. +£5 income", price: 1200, incomeIncrease: 5)
            CUpgradeable(title: "Burgers", description: "Who doesn’t like a burger? +£8 income", price: 2000, incomeIncrease: 8)
            CUpgradeable(title: "Wine", description: "Rake in the cash by selling “fancy” wine. +£10 income", price: 4000, incomeIncrease: 10)
        }
    }
}

#Preview {
    VUProducts()
}
