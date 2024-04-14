//
//  CBalance.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CBalance: View {
    let title: String
    let value: Double
    var body: some View {
        VStack(alignment: .leading) {
            Text(verbatim: title).font(.headline)
            Text(verbatim: "£\(String(format: "%.2f", value))")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .cornerRadius(12)
        .border(.black)
    }
}

#Preview {
    CBalance(title: "Balance", value: 0)
}
