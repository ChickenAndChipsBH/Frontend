//
//  HSingleton.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import Foundation
import SwiftUI

class HSingleton: ObservableObject, NRequestDelegate {
    
    static let shared = HSingleton()
    
    
    
    func receiveQandA(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
    
    func makeNewQuestionRequest() {
        let questionRequest = NRequestQuestion(delegate: self)
        questionRequest.makeQuestionRequest()
    }
    
    var pubLevel = 1
    
    @Published var question: String = ""
    var answer  = ""
    
    @Published var money = 0.0
    @Published var rating = 1.5
    var income = 1
    var idleIncome = 0.0
    /*
    var revenue: Double {
        idleIncome + (rating * income)
    }
    var ratingDecay: Float
    */
    
    func increaseRating(_ amount: Double) {
        // when answering question correct / special event
        rating += amount
        if rating > 5 {
            rating = 5
        }
    }
    
    func decreaseRating(_ amount: Double) {
        // when answering question correct / special event
        rating -= amount
        if rating > 0 {
            rating = 0
        }
    }
    
    func increaseMoney(_ amount: Double) {
        // when answering question correct
        money += amount
    }
    
    func decreaseMoney(_ amount: Double) -> Bool {
        // when buying upgrades
        // return true if enough funds available, false otherwise
        if money >= amount {
            money -= amount
            return true
        }
        return false
    }
    
}
