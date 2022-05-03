//
//  ViewController.swift
//  QuizApp
//
//  Created by Vitali Schumarov on 02.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customButtonDesign()
        highscoreLabel.text = defaults.string(forKey: "name")
        scoreLabel.text = defaults.string(forKey: "score")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        highscoreLabel.text = defaults.string(forKey: "name")
        scoreLabel.text = defaults.string(forKey: "score")
    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToQuiz", sender: self)
    }
    
    //MARK: - change the design of the button
    func customButtonDesign() {
        startButton.layer.cornerRadius = 20
        startButton.layer.borderWidth = 4
        startButton.layer.borderColor = UIColor.black.cgColor
        
        resetButton.layer.cornerRadius = 10
        resetButton.layer.borderWidth = 1
        resetButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        defaults.set("Name:", forKey: "name")
        defaults.set("Score:", forKey: "score")
        loadView()
    }
    
}

