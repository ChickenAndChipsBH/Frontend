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
                    Text(verbatim: "Building")
                }
                .padding(.bottom, 10)
                Button {
                    
                } label: {
                    Text(verbatim: "Products")
                }
                .padding(.bottom, 10)
                Button {
                    
                } label: {
                    Text(verbatim: "Staff")
                }
                .padding(.bottom, 10)
                Button {
                    
                } label: {
                    Text(verbatim: "Fun")
                }
                .padding(.bottom, 10)
                Spacer()
            }
            .buttonStyle(SJuicyButtonStyle())
            .frame(maxWidth: 100)
            .background(Image("brick").resizable(resizingMode: .tile))
            LazyVStack {
                # Building Upgrades
                CUpgradeable(title: "Relocate", description: "Upgrade your pub to a more wealthy location. Resets all upgrades. +£100/sec", price: 200000)
                CUpgradeable(title: "Outdoor Seating", description: "Increase capacity of the pub with outdoor seating... when its sunny. +10% rating boost", price: 1500)
                CUpgradeable(title: "Neon Sign", description: "Nothing catches the attention of customers (and flies) than a bright neon sign. +15% rating boost", price: 4000)
                CUpgradeable(title: "Plants", description: "Bring some life into the pub with some greenery. -5% rating decay", price: 500)
                CUpgradeable(title: "Micro Brewery", description: "Keep the pub hip and trendy by brewing your own craft IPAs. Don't worry, you don't need to know what hops are for the quiz questions. +150/sec", price: 5000)

                CUpgradeable(title: "Hire Quiz Master", description: "Generate idle income + £3/sec", price: 300)
                CUpgradeable(title: "Buy pool table", description: "Reduce rating decay -10%", price: 80)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    VUpgrades()
}
