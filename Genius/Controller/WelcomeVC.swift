//
//  ViewController.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    var questionStyle: QuestionStyle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            
            questionStyle = .lordOfTheRings
        }
            
        else if sender.tag == 2 {
            
            questionStyle = .harryPotter
        }
            
        else if sender.tag == 3 {
            
            questionStyle = .starWars
        }
        
        performSegue(withIdentifier: "goToQuestions", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToQuestions" {
            
            let destinationVC = segue.destination as? MainVC
            
            destinationVC?.style = questionStyle
        }
    }
}
