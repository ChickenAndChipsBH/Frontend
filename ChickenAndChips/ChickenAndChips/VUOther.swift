//
//  VUOther.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VUOther: View {
    var body: some View {
        LazyVStack {
            CUpgradeable(title: "Medium Questions", description: "Bring on a challenge to get more customers interested.", price: 1500)
            CUpgradeable(title: "Hard Questions", description: "Select these if you dare. Quizzers from far and wide will visit, unless all the answers are wrong.", price: 4000)
            CUpgradeable(title: "Ad Campaign", description: "Buy bots from the dark web to promote your pub.", price: 4000)
        }
    }
}

#Preview {
    VUOther()
}
