//
//  VUStaff.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VUStaff: View {
    var body: some View {
        LazyVStack {
            // Staff Upgrades
            CUpgradeable(title: "Quiz Master", description: "Hire someone to run the pub quiz while you’re away. +£10/sec", price: 2500)
            CUpgradeable(title: "Bouncer", description: "Hire security to keep out troublemakers.", price: 4500)
            CUpgradeable(title: "Bar Staff", description: "Hire staff to serve more customers. +£20 max income", price: 4000)
            CUpgradeable(title: "Chef", description: "Hire kitchen staff to cook more food. +£10 max income", price: 2000)
            CUpgradeable(title: "Cleaner", description: "Hire cleaning staff to keep the pub looking good. -5% rating decay", price: 1000)
        }
    }
}

#Preview {
    VUStaff()
}
