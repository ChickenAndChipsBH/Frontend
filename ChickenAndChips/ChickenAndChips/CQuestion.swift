//
//  CQuestion.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CQuestion: View {
    
    @State var qAnswer = ""
    
    @EnvironmentObject var singleton: HSingleton
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(verbatim: "Question").font(.headline)
                
                Text(verbatim: singleton.question).font(.title2)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .cornerRadius(12)
            .border(.black)
            HStack {
                TextField("Enter answer...", text: $qAnswer)
                    
                Button {
                    //print("Making a request")
                    //let req = NRequestQuestion()
                    //req.makeQuestionRequest()
                    
                } label: {
                    Text(verbatim: "Answer")
                }
                .buttonStyle(SJuicyButtonStyle())
            }
            .padding()
            .cornerRadius(12)
            .border(.black)
        }
        .onAppear {
            singleton.makeNewQuestionRequest()
        }
    }
}

#Preview {
    CQuestion()
}
