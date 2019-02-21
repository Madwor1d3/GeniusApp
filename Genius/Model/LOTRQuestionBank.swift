//
//  MathQuestionBank.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import Foundation

class LOTRQuestionBank: QuestionBank {
    
    var list = [Question]()
    
    init() {
        
       list.append(Question(text: "Frodo Is 33 At The Beginning Of The Fellowship Of The Ring.", correctAnswer: true))
        
        list.append(Question(text: "Hobbits Live In Bree.", correctAnswer: true))
        
        list.append(Question(text: "Merry And Pippin Steal From Farmer Waggott.", correctAnswer: false))
        
        list.append(Question(text: "Durin's Folk Are Dwarves.", correctAnswer: true))
        
        list.append(Question(text: "7 Rings Were Given To Elves.", correctAnswer: false))
        
        list.append(Question(text: "The Fellowship Consisted Of 9 Members.", correctAnswer: true))
        
        list.append(Question(text: "This Is The Tomb Of Thorin Oakenshield.", correctAnswer: false))
        
        list.append(Question(text: "The Balrog Gandalf Fought Is Known As Durin's Bane.", correctAnswer: true))
        
        list.append(Question(text: "Gandalf Tells Aragorn To Look To The East On The First Light Of The Fourth Day.", correctAnswer: false))
        
        list.append(Question(text: "A Seeing Stone Is Called A Palantir.", correctAnswer: true))
        
        list.append(Question(text: "Aragorn Is 80.", correctAnswer: false))
        
        list.append(Question(text: "Samwise Gamgee Is Frodo's Cook.", correctAnswer: false))
        
        list.append(Question(text: "Pippin And Frodo Are Second Cousins.", correctAnswer: true))
        
        list.append(Question(text: "The Elfish Word For Friend Is Mellon.", correctAnswer: true))
        
        list.append(Question(text: " Isildur Is Aragorn's Grandfather.", correctAnswer: false))
        
        list.append(Question(text: "Boromir Is Faramir's Younger Brother.", correctAnswer: false))
        
        list.append(Question(text: "Mount Doom Is Also Called Amon Amarth.", correctAnswer: true))
        
        list.append(Question(text: "The Witch King Of Angmar Used To Be An Elf.", correctAnswer: false))
        
        list.append(Question(text: "The Capital Of Rohan Is Called Edoras.", correctAnswer: true))
        
        list.append(Question(text: "Gandalf Has A Ring Of Power.", correctAnswer: true))
    }
}
