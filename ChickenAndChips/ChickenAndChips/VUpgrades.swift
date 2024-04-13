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
                CUpgradeable(title: "Hire Quiz Master", description: "Generate idle income + £3/sec", price: 300)
                CUpgradeable(title: "Buy pool table", description: "Reduce rating decay -10%", price: 80)
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
