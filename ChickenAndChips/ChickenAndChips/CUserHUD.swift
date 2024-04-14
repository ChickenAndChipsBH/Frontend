//
//  CUserHUD.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CUserHUD: View {
    
    @EnvironmentObject var singleton: HSingleton
    
    var body: some View {
        VStack {
            CRating(rating: singleton.rating)
            HStack {
                CBalance(title:"Balance", value: singleton.money)
                CBalance(title:"Revenue", value: singleton.revenue)
                CBUpgrade()
            }
        }
    }
}

#Preview {
    CUserHUD()
}
