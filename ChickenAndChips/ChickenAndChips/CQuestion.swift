//
//  CQuestion.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct CQuestion: View {
    
    @State var qAnswer = ""
    
    // @State private var selection = "Easy"
    let difficulties = ["Easy", "Medium", "Hard"]
    
    @EnvironmentObject var singleton: HSingleton
    
    
    // @State var timeElapsed = -1
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(verbatim: "Question").font(.headline)
                
                Text(verbatim: singleton.question).font(.title2)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .cornerRadius(12)
            .background(.ultraThinMaterial)
            .border(.black)
            HStack {
                TextField("Enter answer...", text: $qAnswer)
                    
                Button {
                    
                    // check if its right
                    if isAcceptedAnswer(qAnswer, singleton.answer) {
                        singleton.increaseRating(0.3)
                        singleton.increaseMoney(Double(singleton.income * 100))
                        singleton.lastCorrect = true
                        
                        singleton.timeElapsed = 0
                    } else {
                        singleton.lastCorrect = false
                        singleton.decreaseRating(0.2)
                    }
                    
                    singleton.timeElapsed2 = 3
                    
                    withAnimation {
                        singleton.showingResponseCorrectness = true
                    }
                    
                    
                    
                    qAnswer = ""
                } label: {
                    Text(verbatim: "Answer")
                }
                .buttonStyle(SJuicyButtonStyle())
            }
            .padding()
            .cornerRadius(12)
            .border(.black)
            Picker("Select difficulty", selection: $singleton.difficulty) {
                ForEach(difficulties, id: \.self) {
                    Text($0)
                }
            }
                .pickerStyle(.menu)
        }
        .onAppear {
            singleton.makeNewQuestionRequest()
        }
        .onReceive(timer) { _ in
            // singleton.timeElapsed -= 1
            print(singleton.timeElapsed)
            
            // singleton.doAllUpdates(time: timeElapsed)
        }
    }
}

#Preview {
    CQuestion()
}
