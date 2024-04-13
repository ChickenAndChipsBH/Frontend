//
//  HCurrency.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import Foundation

class HCurrency {
    static func format(_ value: Float, decimals: Int = 2) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = ","
        numberFormatter.minimumFractionDigits = decimals
        numberFormatter.maximumFractionDigits = decimals
        let formattedNumber = numberFormatter.string(from: NSNumber(value: value))
        return formattedNumber ?? ""
        return String(format: "%.2f", value)
    }
}
