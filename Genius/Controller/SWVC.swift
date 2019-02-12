//
//  HistVC.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit

class SWVC: UIViewController {

    let allQuestions = SWQuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    
    
    @IBOutlet weak var HistQuestionLabel: UILabel!
    @IBOutlet weak var HistProgressLabel: UILabel!
    @IBOutlet weak var HistScoreLabel: UILabel!
    @IBOutlet weak var HistProgressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }
    
    
    @IBAction func unwindFromMathVC(unwindSegue: UIStoryboardSegue) {
    }
    
    
    @IBAction func AnswerPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        updateUI()
    }
    
    
    //MARK: - UpdateUI Method
    func updateUI() {
        HistScoreLabel.text = "Score: \(score)"
        HistProgressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    
    // MARK: - NextQuestion Method
    func nextQuestion() {
        if questionNumber <= 12 {
            HistQuestionLabel.text = allQuestions.list[questionNumber].questionText
            HistProgressLabel.text = "\(questionNumber + 1) / 13"
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()}
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    // MARK: - CheckAnswer Method
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Whrong!")
        }
    }
    
    
    // MARK: - StartOver Method
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
}
