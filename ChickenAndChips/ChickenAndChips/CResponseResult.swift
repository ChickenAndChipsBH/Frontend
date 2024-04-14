//
//  CResponseResult.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CResponseResult: View {
    
    @EnvironmentObject var singleton: HSingleton
    
    var body: some View {
        HStack {
            if singleton.lastCorrect {
                Image("thumb up").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Text("That's correct!")
                    .font(.title)
                Text("+£100").font(.headline)
            } else {
                Image("BooHiss").resizable().aspectRatio(contentMode: .fit)
                Spacer()
                Text("That's wrong! Correct answer is \(singleton.answer)").font(.title)
            }
        }
        .padding()
        .background(singleton.lastCorrect ? Color.green : Color.red)
        .cornerRadius(12)
    }
}

#Preview {
    CResponseResult().environmentObject(HSingleton.shared)
}
