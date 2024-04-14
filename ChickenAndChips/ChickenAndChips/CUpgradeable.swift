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
    
    func processPubUpgrade() {
        upgradePurchased = checkPurchased()
    }
    
    func processUpgrade() {
        guard !upgradePurchased else {
            return
        }
        guard !isPubUpgrade else {
            processPubUpgrade()
            return
        }
        print("Buying upgrade")
        guard singleton.decreaseMoney(Double(price)) else {
            print("Insufficient funds, transaction failed")
            return
        }
        
        if let idleIncomeIncrease = idleIncomeIncrease {
            singleton.idleIncome += Double(idleIncomeIncrease)
        }
        if let incomeIncrease = incomeIncrease {
            singleton.income += incomeIncrease
        }
        if let ratingDecayDecrease = ratingDecayDecrease {
            singleton.ratingDecay -= singleton.ratingDecay * Double(ratingDecayDecrease / 100)
        }
        if let ratingPercentageIncrease = ratingPercentageIncrease {
            singleton.ratingPercentageIncrease += Double(ratingPercentageIncrease)
        }
        
        // finalise and register the upgrade
        singleton.upgradesDone.append(title)
        upgradePurchased = true
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
                
                processUpgrade()
            } label: {
                if upgradePurchased {
                    Text(verbatim: "Purchased")
                } else {
                    Text(verbatim: "£\(HCurrency.format(price, decimals: 0))")
                }
            }.buttonStyle(SSolidButtonStyle(color: .green))
                .disabled(singleton.money < Double(price) || upgradePurchased)
                .opacity((singleton.money < Double(price) || upgradePurchased) ? 0.5 : 1)
            
        }
        .frame(maxWidth: .infinity)
        .padding()
        .cornerRadius(12)
        .border(.black)
        .onAppear {
            upgradePurchased = checkPurchased()
        }
    }
}

#Preview {
    CUpgradeable(title: "Hire Quiz Master", description: "Generate idle income + £3/sec", price: 300)
}
