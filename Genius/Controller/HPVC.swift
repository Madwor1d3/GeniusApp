//
//  HPVC.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit


class MainVC: UIViewController {
    
    var allQuestions: QuestionBank?
    
    var style: QuestionStyle?
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    
    
    @IBOutlet weak var HPQuestionLabel: UILabel!
    @IBOutlet weak var HPProgressLabel: UILabel!
    @IBOutlet weak var HPScoreLabel: UILabel!
    @IBOutlet weak var HPProgressBar: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickedQuestionsBank()
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
    
    
    func pickedQuestionsBank() {
        
        switch style {
        case .lordOfTheRings?: allQuestions = LOTRQuestionBank()
        case .harryPotter?: allQuestions = HPQuestionBank()
        case .starWars?: allQuestions = SWQuestionBank()
        default: break
        }
    }
    
    //MARK: - UpdateUI Method
    func updateUI() {
        HPScoreLabel.text = "Score: \(score)"
        HPProgressBar.frame.size.width = (view.frame.size.width / 15) * CGFloat(questionNumber + 1)
        view.layoutIfNeeded()
    }
    
    
    // MARK: - NextQuestion Method
    func nextQuestion() {
        if questionNumber <= 14 {
            HPQuestionLabel.text = allQuestions?.list[questionNumber].questionText
            HPProgressLabel.text = "\(questionNumber + 1) / 15"
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
        let correctAnswer = allQuestions?.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            ProgressHUD.showSuccess("Correct!")
            score += 1
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    // MARK: - StartOver Method
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
}
