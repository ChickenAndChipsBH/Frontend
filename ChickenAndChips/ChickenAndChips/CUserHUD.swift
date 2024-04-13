//
//  CUserHUD.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CUserHUD: View {
    var body: some View {
        VStack {
            CRating(rating: 3.5)
            HStack {
                CBalance(title:"Balance", value: 0)
                CBalance(title:"Revenue", value: 0)
            }
        }
    }
}

#Preview {
    CUserHUD()
}
