//
//  VSheet.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 14/04/2024.
//

import SwiftUI

struct VSheet: View {
    
    @EnvironmentObject var singleton: HSingleton
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        if singleton.pubLevel == 3 {
            VStack() {
                Text("You've reached the high life!").font(.title).multilineTextAlignment(.center)
                Text("Welcome to your bougie new Surrey tavern!").multilineTextAlignment(.center)
            }
        } else if singleton.pubLevel == 2 {
            VStack {
                Text("You're going up!").font(.title).multilineTextAlignment(.center)
                Text("Welcome to your little pub in Manchester!").multilineTextAlignment(.center)
            }
        } else {
            VStack {
                Text("Answer trivia questions and level up your pub!").font(.title).multilineTextAlignment(.center)
                Text("Do you really want to stay in sunny old Slough?").multilineTextAlignment(.center)
            }
        }
        
        Image("ThumbsUp").resizable()
            .aspectRatio(contentMode: .fit)
        Button {
            dismiss()
        } label: {
            Text("Let's get quizzical!")
        }
        Spacer()
    }
}

#Preview {
    VSheet()
}
