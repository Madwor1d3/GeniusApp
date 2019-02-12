//
//  HistQuestionBank.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import Foundation

class SWQuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(text: "Lord Tyranus Trained Qui-Gon Jin.", correctAnswer: true))
        
        list.append(Question(text: "Luke Skywalker Was Born On Tatooine.", correctAnswer: false))
        
        list.append(Question(text: "Anakin Killed Mace Windu.", correctAnswer: false))
        
        list.append(Question(text: "The Second Death Star Was Completed.", correctAnswer: false))
        
        list.append(Question(text: "Han Solo's Home Planet Is Bespin.", correctAnswer: false))
        
        list.append(Question(text: "Jabba The Hutt Owned Anakin When He Was A Slave.", correctAnswer: false))
        
        list.append(Question(text: "Emperor Palpatine's First Name Is Sheev.", correctAnswer: true))
        
        list.append(Question(text: "Obi-Wan Killed Jango Fett.", correctAnswer: false))
        
        list.append(Question(text: "Yoda Fought Lord Tyranus On Geonosis.", correctAnswer: true))
        
        list.append(Question(text: "Darth Maul Has A Brother Called Savage.", correctAnswer: true))
        
        list.append(Question(text: "Watto Was Anakin's Podracing Rival.", correctAnswer: false))
        
        list.append(Question(text: "Maz Kanata Lived In A Castle On Takodana.", correctAnswer: true))
        
        list.append(Question(text: "C-3PO Was An Astromech Droid.", correctAnswer: false))
        
        list.append(Question(text: "The Game Chewbacca And R2-D2 Played On The Millenium Falcon Was Called Dejarik.", correctAnswer: true))
        
        list.append(Question(text: "The Word \"Ewok\" Was Never Spoken In Return Of The Jedi.", correctAnswer: true))
    }
}
