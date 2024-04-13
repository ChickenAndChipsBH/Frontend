//
//  CQuestion.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CQuestion: View {
    
    @State var qAnswer = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Question").font(.headline)
                
                Text("What is Tom's favourite programming language?").font(.title2)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .cornerRadius(12)
            .border(.black)
            VStack {
                TextField("Enter answer...", text: $qAnswer)
            }
            .padding()
            .cornerRadius(12)
            .border(.black)
        }
    }
}

#Preview {
    CQuestion()
}
