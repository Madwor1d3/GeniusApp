//
//  HPVC.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit

class HPVC: UIViewController {

    let allQuestions = HPQuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    
    
    @IBOutlet weak var HPQuestionLabel: UILabel!
    @IBOutlet weak var HPProgressLabel: UILabel!
    @IBOutlet weak var HPScoreLabel: UILabel!
    @IBOutlet weak var HPProgressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
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
        HPScoreLabel.text = "Score: \(score)"
        HPProgressBar.frame.size.width = (view.frame.size.width / 20) * CGFloat(questionNumber + 1)
    }
    
    
    // MARK: - NextQuestion Method
    func nextQuestion() {
        if questionNumber <= 19 {
            HPQuestionLabel.text = allQuestions.list[questionNumber].questionText
            HPProgressLabel.text = "\(questionNumber + 1) / 20"
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
