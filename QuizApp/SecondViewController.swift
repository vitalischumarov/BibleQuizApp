//
//  SecondViewController.swift
//  QuizApp
//
//  Created by Vitali Schumarov on 02.05.22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonTop: UIButton!
    @IBOutlet weak var buttonMid: UIButton!
    @IBOutlet weak var buttonDown: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designButton()
    }

    
    
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
