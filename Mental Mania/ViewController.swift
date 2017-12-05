//
//  ViewController.swift
//  Mental Mania
//
//  Created by Teacher on 11/8/17.
//  Copyright © 2017 CI 5365. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var errorMessage: UILabel!
    
    @IBOutlet var numberCorrect: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    @IBOutlet var myUIImageView: UIImageView!
    
    @IBOutlet var userAnswer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextQuestion() {
        currentQuestionIndex += 1
        let newImg: UIImage? = UIImage(named: "mm\(currentQuestionIndex).jpg")
        self.myUIImageView.image = newImg
        //for testing
        print("mm\(currentQuestionIndex).jpg")

    }
       
   
    let answers: [String] = [
        "5",
        "11",
        "7",
        "1000",
        "2",
        "5",
        "24",
        "20",
        "64",
        "",
        "11",
        "5",
        "324", //list of perfect squares up to 18
        "7",
        "6",
        "75"
    ]
    
    var currentQuestionIndex: Int = 0
    var correctCount = 0
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        let currentAnswer = answers[currentQuestionIndex]
        let currentUserAnswer = userAnswer.text
        
        print("Current Answer is \(currentAnswer)")
        print("User Entered \(currentUserAnswer!)")

        if currentAnswer == currentUserAnswer {
            userAnswer.text = ""
            nextQuestion()
            errorMessage.text = "Way to go!"
            correctCount += 1
            numberCorrect.text = "\(correctCount)"
        } else {
            errorMessage.text = "Incorrect - Try again"
            
        }
    }
    
    //STILL TODO:
    //hint page with links to various sites
   
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        userAnswer.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

