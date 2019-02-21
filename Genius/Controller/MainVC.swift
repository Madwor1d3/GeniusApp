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
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var backgound: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickedQuestionsBank()
        nextQuestion()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
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
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: - QuuestionStyle Method
    
    func pickedQuestionsBank() {
        
        switch style {
        case .lordOfTheRings?: allQuestions = LOTRQuestionBank(); backgound.image = UIImage(named: "LOTRBG")
        case .harryPotter?: allQuestions = HPQuestionBank(); backgound.image = UIImage(named: "HPBG")
        case .starWars?: allQuestions = SWQuestionBank(); backgound.image = UIImage(named: "SWBG")
        default: break
        }
    }
    
    //MARK: - UpdateUI Method
    
    func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        if let countOfQuestions = allQuestions?.list.count {
            progressBar.frame.size.width = (view.frame.size.width / CGFloat(countOfQuestions)) * CGFloat(questionNumber + 1) }
        view.layoutIfNeeded()
    }
    
    
    // MARK: - NextQuestion Method
    
    func nextQuestion() {
        
        if let countOfQuestions = allQuestions?.list.count {
            if questionNumber <= countOfQuestions - 1  {
            questionLabel.text = allQuestions?.list[questionNumber].questionText
            progressLabel.text = "\(questionNumber + 1) / \(countOfQuestions)"
            updateUI()
            
        } else {
            
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()}
            let backToMainScreen = UIAlertAction(title: "Main screen", style: .default) { (UIAlertAction) in
                    self.dismiss(animated: true, completion: nil)
                }
            alert.addAction(backToMainScreen)
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
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
