//
//  SecondViewController.swift
//  QuizApp
//
//  Created by Vitali Schumarov on 02.05.22.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: - IBM Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonTop: UIButton!
    @IBOutlet weak var buttonMid: UIButton!
    @IBOutlet weak var buttonDown: UIButton!
    
    var allQuestions: [QuizClass] = [QuizClass]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designButton()
        createQuestion()
        showQuestion()
    }

    
    //MARK: - Show the current question
    func showQuestion() {
        questionLabel.text = allQuestions[0].question
        buttonTop.setTitle(allQuestions[0].answer1, for: .normal)
        buttonMid.setTitle(allQuestions[0].answer2, for: .normal)
        buttonDown.setTitle(allQuestions[0].answer3, for: .normal)
    }
    //MARK: - Questions created
    func createQuestion() {
        let quiz1 = QuizClass(_question: "Ich bin der Weg, die Wahrheit und das Leben, niemand kommt zum Vater als nur durch mich.",
                              _answer1: "1. Mose 4:10",
                              _answer2: "Johannes 14:6",
                              _answer3: "Markus 12:4",
                              _solution: 2)
        allQuestions.append(quiz1)
        let quiz2 = QuizClass(_question: "Am Anfang war das Wort",
                              _answer1: "1 Johannes 1:1",
                              _answer2: "Psalm 177:7",
                              _answer3: "Johannes 1:1",
                              _solution: 3)
        allQuestions.append(quiz2)
    }
    //MARK: - Design the answer button
    func designButton() {
        buttonTop.layer.cornerRadius = 20
        buttonTop.layer.borderWidth = 4
        buttonTop.layer.borderColor = UIColor.black.cgColor
        buttonMid.layer.cornerRadius = 20
        buttonMid.layer.borderWidth = 4
        buttonMid.layer.borderColor = UIColor.black.cgColor
        buttonDown.layer.cornerRadius = 20
        buttonDown.layer.borderWidth = 4
        buttonDown.layer.borderColor = UIColor.black.cgColor
    }
    
}
