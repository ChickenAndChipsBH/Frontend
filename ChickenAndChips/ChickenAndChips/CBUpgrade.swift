//
//  CBUpgrade.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CBUpgrade: View {
    var body: some View {
        NavigationLink {
            VUpgrades()
        } label: {
            Image(systemName: "arrowshape.up.fill")
        }
        .buttonStyle(SSolidButtonStyle(color: .green, excludeFrame: true))
    }
}

#Preview {
    CBUpgrade()
}
