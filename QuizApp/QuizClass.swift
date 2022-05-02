//
//  QuizClass.swift
//  QuizApp
//
//  Created by Vitali Schumarov on 02.05.22.
//

import Foundation

class QuizClass {
    let question: String
    let answer1: String
    let answer2: String
    let answer3: String
    let solution: Int
    
    init(_question: String, _answer1: String, _answer2: String, _answer3: String, _solution: Int) {
        question = _question
        answer1 = _answer1
        answer2 = _answer2
        answer3 = _answer3
        solution = _solution
    }
}
