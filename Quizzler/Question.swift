//
//  Question.swift
//  Quizzler
//
//  Created by Alexis Rodriguez on 4/25/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        self.question = q
        self.answer = a
    }
}
