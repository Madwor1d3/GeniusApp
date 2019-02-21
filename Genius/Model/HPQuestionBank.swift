//
//  BioQuestionBank.swift
//  Genius
//
//  Created by Madwor1d3 on 11/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import Foundation

class HPQuestionBank: QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        list.append(Question(text: "Harry's Patronus Is A Stag.", correctAnswer: true))
        
        list.append(Question(text: "The Dursleys Live In Sussex.", correctAnswer: false))
        
        list.append(Question(text: "Hagrid's First Name Is Rubeus.", correctAnswer: true))
        
        list.append(Question(text: "You Have To Be In Slytherin To Speak Parseltongue.", correctAnswer: false))
        
        list.append(Question(text: "Colin Creevey First Arrived In The Prisoner Of Azkaban.", correctAnswer: false))
        
        list.append(Question(text: "Hermione's Parents Are Dentists.", correctAnswer: true))
        
        list.append(Question(text: "Sirius Dies In The Department Of Mysteries.", correctAnswer: true))
        
        list.append(Question(text: "Before Approaching A Hippogriff You Must Bow First.", correctAnswer: true))
        
        list.append(Question(text: "Luna Lovegood Can See Thestrals Because Her Father Died.", correctAnswer: false))
        
        list.append(Question(text: "According To The Book, Aunt Petunia Is A Brunette.", correctAnswer: false))
        
        list.append(Question(text: "Fred And George's Shop Was Opened Because It Was Funded By Harry's Triwizard Tournament Winnings.", correctAnswer: true))
        
        list.append(Question(text: "Moaning Myrtle Killed Herself Because Olivia Hornby Teased Her About Her Glasses.", correctAnswer: false))
        
        list.append(Question(text: "The Second Task In The Triwizard Tournament Was On February 24th.", correctAnswer: true))
        
        list.append(Question(text: "Harry Looks At Memories In A Pensieve.", correctAnswer: true))
        
        list.append(Question(text: "Passwords For The Headmaster's Office Are Always Candy-Themed.", correctAnswer: false))
    }
}
