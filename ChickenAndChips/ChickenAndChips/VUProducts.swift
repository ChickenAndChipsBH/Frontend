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
            CUpgradeable(title: "Chicken N’ Chips", description: "Serve the team’s favourite meal.", price: 800)
            CUpgradeable(title: "Snake Bite", description: "Serve the classic SU Happy Hour drink.", price: 500)
            CUpgradeable(title: "Cocktails", description: "Charge loads for cocktails.", price: 1200)
            CUpgradeable(title: "Burgers", description: "Who doesn’t like a burger?", price: 2000)
            CUpgradeable(title: "Wine", description: "Rake in the cash by selling “fancy” wine.", price: 4000)
        }
    }
}

#Preview {
    VUProducts()
}
