//
//  CUpgradeable.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CUpgradeable: View {
    
    @State var upgradePurchased = false
    @EnvironmentObject var singleton: HSingleton
    
    let title: String
    let description: String
    let price: Float
    
    
    // bonus information
    var idleIncomeIncrease: Int? = nil
    var incomeIncrease: Int? = nil
    var ratingPercentageIncrease: Int? = nil
    var ratingDecayDecrease: Int? = nil
    
    var isPubUpgrade: Bool = false
    var pubUpgradeLevel: Int? = 0
    
    func checkPurchased() -> Bool {
        if isPubUpgrade, let upgradeLevel = pubUpgradeLevel, upgradeLevel < 3 {
            return false
        } else if !singleton.upgradesDone.contains(title) {
            return false
        } else {
            return true
        }
    }
    
    func processUpgrade() {
        guard !upgradePurchased else {
            return
        }
    }
    
    var body: some View {
        VStack() {
            VStack(alignment: .leading) {
                Text(verbatim: title).font(.title).multilineTextAlignment(.leading)
                Text(verbatim: description)
                    .font(.headline).multilineTextAlignment(.leading)
            }
            Spacer()
            Button {
                
            } label: {
                Text(verbatim: "£\(HCurrency.format(price, decimals: 0))")
            }.buttonStyle(SSolidButtonStyle(color: .green))
                .disabled(singleton.money < Double(price))
                .opacity(singleton.money < Double(price) ? 0.5 : 1)
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .cornerRadius(12)
        .border(.black)
    }
}

#Preview {
    CUpgradeable(title: "Hire Quiz Master", description: "Generate idle income + £3/sec", price: 300)
}
