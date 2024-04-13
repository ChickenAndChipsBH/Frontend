//
//  VUpgrades.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct VUpgrades: View {
    var body: some View {
        HStack {
            VStack {
                Button {
                    
                } label: {
                    Text(verbatim: "Buildings")
                }
                Button {
                    
                } label: {
                    Text(verbatim: "Products")
                }
                Button {
                    
                } label: {
                    Text(verbatim: "Buildings")
                }
            }
            LazyVStack {
                CUpgradeable(title: "Move Pub", description: "Resets all upgrades\nIncreases revenue + £100/sec", price: 200000)
                CUpgradeable(title: "Hire Quiz Master", description: "Generate idle income + £3/sec", price: 300)
                CUpgradeable(title: "Buy pool table", description: "Reduce rating decay -10%", price: 80)
            }
        }
    }
}

#Preview {
    VUpgrades()
}
