//
//  Answer.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}


struct Question: Identifiable {
    var id = UUID()
    var text: String
    var answers: [Answer]
}


let QuizzoQuestions: [Question] = [
    Question(text: "What is the first element on the periodic table?", answers: [
        Answer(text: "Hydrogen", isCorrect: true),
        Answer(text: "Helium", isCorrect: false),
        Answer(text: "Oxygen", isCorrect: false),
        Answer(text: "Lithium", isCorrect: false)
    ]),
    
    Question(text: "Which of the following Pokemon Types was present in the original games, Red and Blue?", answers: [
        Answer(text: "Steel", isCorrect: false),
        Answer(text: "Ice", isCorrect: true),
        Answer(text: "Dark", isCorrect: false),
        Answer(text: "Fairy", isCorrect: false)
    ]),
    
    Question(text: "What is the official language of Brazil?", answers: [
        Answer(text: "Brazilian", isCorrect: false),
        Answer(text: "Spanish", isCorrect: false),
        Answer(text: "Japanese", isCorrect: false),
        Answer(text: "Portugese", isCorrect: true)
    ]),
    
    Question(text: "How many pieces are there on the board at the start of a game of chess?", answers: [
        Answer(text: "16", isCorrect: false),
        Answer(text: "32", isCorrect: true),
        Answer(text: "48", isCorrect: false),
        Answer(text: "24", isCorrect: false)
    ]),
    
    Question(text: "The series of the Intel HD graphics generation succeeding that of the 5000 and 6000 series (Broadwell) is called:", answers: [
        Answer(text: "HD Graphics 600", isCorrect: false),
        Answer(text: "HD Graphics 700", isCorrect: false),
        Answer(text: "HD Graphics 500", isCorrect: true),
        Answer(text: "HD Graphics 7000", isCorrect: false)
    ]),
    
]
