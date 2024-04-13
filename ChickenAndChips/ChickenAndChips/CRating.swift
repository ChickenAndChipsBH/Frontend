//
//  CRating.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CRating: View {
    
    @State var rating: Float
    
    func star(at index: Int) -> some View {
        let diff = rating - Float(index)
        if diff >= 0 {
            return Image(systemName: "star.fill")
        } else if diff > -1 {
            return Image(systemName: "star.leadinghalf.filled")
        } else {
            return Image(systemName: "star")
        }
    }
    
    var body: some View {
        HStack {
            ForEach((1...5), id: \.self) {
                star(at: $0)
            }
            Text(verbatim: "\(rating)").font(.headline)
        }
    }
}

#Preview {
    CRating(rating: 3)
}
