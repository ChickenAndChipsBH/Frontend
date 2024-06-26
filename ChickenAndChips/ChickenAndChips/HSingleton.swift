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
    
    
    var upgradesDone: [String] = []
    
    private var timer: DispatchSourceTimer?

    func startTimer() {
        let queue = DispatchQueue(label: "com.example.timer")
        timer = DispatchSource.makeTimerSource(queue: queue)
        timer!.schedule(deadline: .now(), repeating: .seconds(1))
        timer!.setEventHandler {
            //DO LOOP TASKS HERE
    
            //DispatchQueue.main.async {
                // update your model objects and/or UI here NOT SURE IF NEEDED
            //}
            
            DispatchQueue.main.async {
                self.doAllUpdates()
            }
        }
        timer!.resume()
    }
    
    func stopTimer() {
        timer?.cancel()
        timer = nil
    }
    
    init() {
        // Call startTimer to begin the timer
        startTimer()
        
        // Dispatch the main thread to prevent the script from terminating immediately
        // dispatchMain()
    }
    
    func receiveQandA(question: String, answer: String) {
        DispatchQueue.main.async {
            self.question = question
            self.answer = answer
        }
    }
    
    func makeNewQuestionRequest() {
        let questionRequest = NRequestQuestion(delegate: self)
        questionRequest.makeQuestionRequest()
    }
    
    @Published var pubLevel = 1
    
    @Published var showingSheet = true
    
    @Published var question: String = ""
    var answer  = ""
    
    @Published var money = 10000.0
    @Published var rating = 1.5
    
    @Published var timeElapsed = -1
    @Published var timeElapsed2 = -1
    
    @Published var lastCorrect = false
    @Published var showingResponseCorrectness = false
    
    @Published var pubImage = "pub1"
    
    @Published var difficulty = "Easy"
    
    var income = 1
    var idleIncome = 0.0
    
    var revenue: Double {
        idleIncome + (rating * Double(income))
    }
    
    var ratingDecay = 0.02

    var ratingPercentageIncrease: Double = 0.0
    
    
    func increaseRating(_ amount: Double) {
        // when answering question correct / special event
        rating += amount * (1 + ratingPercentageIncrease)
        if rating > 5 {
            rating = 5
        }
        print(rating)
    }
    
    func decreaseRating(_ amount: Double) {
        // when answering question correct / special event
        rating -= amount
        if rating < 0 {
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
    
    func updateRating(time: Int) {
        // time = time (seconds) since last question was answered
        if (time > -120) {
            // rating does not decay until 2 mins after answering a question
            // do nothing
            return
        }
        decreaseRating(ratingDecay)
    }
    
    func updateMoney() {
        money += revenue
        
    }
    
    func updatePubAppearance() {
        switch pubLevel { // check what pub level, then check the popularity to choose appropriate texture
        case 1:
            if rating < 1.0 { pubImage = "pub1" }
            else if rating < 2.5 { pubImage = "pub11" }
            else if rating < 4.0 { pubImage = "pub12" }
            else { pubImage = "pub13" }
        case 2:
            if rating < 1.0 { pubImage = "pub2" }
            else if rating < 2.5 { pubImage = "pub21" }
            else if rating < 4.0 { pubImage = "pub22" }
            else { pubImage = "pub23" }
        case 3:
            if rating < 1.0 { pubImage = "pub3" }
            else if rating < 2.5 { pubImage = "pub31" }
            else if rating < 4.0 { pubImage = "pub32" }
            else { pubImage = "pub33" }
        default:
            // error
            pubImage = "pub33"
        }
    }
    
    func doAllUpdates() {
        
        timeElapsed -= 1
        timeElapsed2 -= 1
        
        withAnimation {
            if timeElapsed2 == 0 {
                self.makeNewQuestionRequest()
            }
            if timeElapsed2 < 1 {
                self.showingResponseCorrectness = false
            }
        }
        updateRating(time: timeElapsed)
        updateMoney()
        updatePubAppearance()
    }
    
}
