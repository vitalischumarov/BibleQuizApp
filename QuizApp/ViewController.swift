//
//  ViewController.swift
//  QuizApp
//
//  Created by Vitali Schumarov on 02.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        customButtonDesign()
    }

    //MARK: - change the design of the button
    func customButtonDesign() {
        startButton.layer.cornerRadius = 20
        startButton.layer.borderWidth = 4
        startButton.layer.borderColor = UIColor.black.cgColor
    }

}

