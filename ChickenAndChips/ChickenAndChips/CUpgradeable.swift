//
//  CUpgradeable.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CUpgradeable: View {
    let title: String
    let description: String
    let price: Float
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(verbatim: title).font(.title)
                Text(verbatim: description)
                    .font(.headline)
            }
            Spacer()
            Text(verbatim: "£\(HCurrency.format(price, decimals: 0))")
                .font(.title)
                .padding()
                .border(.black)
            
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
