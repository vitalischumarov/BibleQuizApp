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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var allQuestions: [QuizClass] = [QuizClass]()
    var counter: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Score: 0"
        progressBar.progress = 0
        designButton()
        createQuestion()
        showQuestion()
        showProgressBar()
    }

    
    //MARK: - Pressed an answer
    @IBAction func pressAnswer(_ sender: UIButton) {
        let pressedAnswer: Int = sender.tag
        checkAnswer(chosenAnswer: pressedAnswer)
        
        if counter == allQuestions.count - 1 {
            gameOverAlert()
        } else {
            counter = counter + 1
            showQuestion()
            showProgressBar()
        }
    }
    
    //MARK: - Check the answer
    func checkAnswer(chosenAnswer: Int) {
        if chosenAnswer == allQuestions[counter].solution {
            score = score + 10
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    //MARK: - Show progressBar
    func showProgressBar() {
        progressBar.progress = Float(counter) / Float(allQuestions.count - 1)
    }
    
    //MARK: - Show the current question
    func showQuestion() {
        questionLabel.text = allQuestions[counter].question
        buttonTop.setTitle(allQuestions[counter].answer1, for: .normal)
        buttonMid.setTitle(allQuestions[counter].answer2, for: .normal)
        buttonDown.setTitle(allQuestions[counter].answer3, for: .normal)
    }
    
    //MARK: - End alert
    func gameOverAlert() {
        let alert = UIAlertController(title: "The game is over", message: "Your score is \(score)! Do you want so save it?", preferredStyle: .alert)
        let actionSave = UIAlertAction(title: "save", style: .default, handler: nil)
        let actionStop = UIAlertAction(title: "break", style: .default, handler: nil)
        alert.addAction(actionSave)
        alert.addAction(actionStop)
        self.present(alert, animated: true, completion: nil)
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
        let quiz3 = QuizClass(_question: "Alle eure Dinge lasst in der Liebe geschehen!",
                              _answer1: "1 Korinther 16:14",
                              _answer2: "2 Korinther 4:14",
                              _answer3: "Epheser 3:16",
                              _solution: 1)
        allQuestions.append(quiz3)
        let quiz4 = QuizClass(_question: "Denn wir wandeln im Glauben und nicht im Schauen.",
                              _answer1: "Epheser 4:2",
                              _answer2: "5 Mose 6:7",
                              _answer3: "2 Korinther 5:7",
                              _solution: 3)
        allQuestions.append(quiz4)
        let quiz5 = QuizClass(_question: "Es ist aber der Glaube eine feste Zuversicht dessen, was man hofft, und ein Nichtzweifeln an dem, was man nicht                                    sieht.",
                              _answer1: "Hebräer 11:1",
                              _answer2: "Sprüche 3:5-6",
                              _answer3: "Sprüche 3:3-4",
                              _solution: 1)
        allQuestions.append(quiz5)
        let quiz6 = QuizClass(_question: "Alles kann ich durch Christus, der mir Kraft und Stärke gibt.",
                              _answer1: "Johannes 3:16",
                              _answer2: "Philipper 4:13",
                              _answer3: "Jeremiah 29:11",
                              _solution: 2)
        allQuestions.append(quiz6)
        let quiz7 = QuizClass(_question: "Fürchte dich nicht, denn ich stehe dir bei; hab keine Angst, denn ich bin dein Gott! Ich mache dich stark, ich helfe                               dir, mit meiner siegreichen Hand beschütze ich dich!",
                              _answer1: "Jesaja 41:10",
                              _answer2: "Psalm 46:2",
                              _answer3: "Hebräer 11:1",
                              _solution: 3)
        allQuestions.append(quiz7)
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
