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
                CUpgradeable(title: "Relocate", description: "Move to new location, reset upgrades, and increase revenue.", price: 200000)
                CUpgradeable(title: "Buy pool table", description: "Reduce rating decay -10%", price: 80)
                CUpgradeable(title: "Buy pool table", description: "Reduce rating decay -10%", price: 80)
                CUpgradeable(title: "Relocate", description: "Move to new location, reset upgrades, and increase revenue.", price: 200000)
                Spacer()
                
                CUpgradeable(title: "Quiz Master", description: "Hire someone to run the pub quiz while you’re away.", price: 2500)
                CUpgradeable(title: "Bouncer", description: "Hire security to keep out troublemakers.", price: 4,500)
                CUpgradeable(title: "Bar Staff", description: "Hire staff to serve more customers.", price: 4000)
                CUpgradeable(title: "Chef", description: "Hire kitchen staff to cook more food.", price: 2000)
                CUpgradeable(title: "Cleaner", description: "Hire cleaning staff to keep the pub looking good.", price: 1000)
                Spacer()

                CUpgradeable(title: "Dart Board", description: "Classic pub game.", price: 500)
                CUpgradeable(title: "Pool Table", description: "Keep customers in the pub by giving them a pool table.", price: 2,500)
                CUpgradeable(title: "Speakers", description: "Save your vocal cords by investing in some crystal clear speakers.", price: 5,500)
                CUpgradeable(title: "TVs", description: "Make sure to pay your TV license.", price: 10000)
                CUpgradeable(title: "Live Band", description: "Attract the crowds with a live band every night.", price: 15000)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    VUpgrades()
}
