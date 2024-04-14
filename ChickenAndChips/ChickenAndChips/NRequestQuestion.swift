//
//  NRequestQuestion.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct NRequestQuestion {
    let url = URL(string: "http://172.26.44.137:8080/questioneasy")!
    let delegate: NRequestDelegate
    
    func makeQuestionRequest() {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("An error has occured in the network request.")
                return
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    print(json)
                    // try to read out a string array
                    if let question = json["question"] as? String, let answer = json["answer"] as? String {
                        delegate.receiveQandA(question: question, answer: answer)
                    }
                }
            } catch let error as NSError {
                print("Failed to parse the JSON data that was sent back.")
            }
        }
        task.resume()
        
    }
}
