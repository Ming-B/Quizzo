//
//  QuestionView.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct QuestionView: View {
    @State var currentQuestionIndex = 0
    @State var incorrectAnswers = 0
    @State var correctAnswerSelected = false
    @State var answerSelected = false
    @State private var scale = 1.0
    @State private var rotationNum = 0.0

    @State private var isDone = false
    
    @State private var questions: [Question] = QuizzoQuestions.shuffled()
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            if isDone {
                ResultView(incorrectAnswers: $incorrectAnswers, isDone: $isDone)
            }
            
            else {
                
                HStack{
                    Text("Quizzo")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.purple)
                    
                    Spacer()
                    
                    Text("\(currentQuestionIndex + 1) out of \(questions.count)")
                        .foregroundStyle(.purple)
                        .fontWeight(.heavy)
                    
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Text(questions[currentQuestionIndex].text)
                        .font(.system(size: 20))
                        .bold()
                        .foregroundStyle(.gray)
                    
                    
                    ForEach(questions[currentQuestionIndex].answers) { answer in
                        AnswerRow(answer: answer, correctAnswerSelected: $correctAnswerSelected, answerSelected: $answerSelected)
                            .scaleEffect(scale)
                            .rotationEffect(.degrees(rotationNum))
                            .onTapGesture {
                                
                                answerSelected = true
                                
                                if answer.isCorrect {
                                    correctAnswerSelected = true
                                    withAnimation(.easeInOut(duration: 1.0)) {
                                        scale = 15.0
                                    } completion: {
                                        scale = 1.0
                                    }
                                    
                                }
                                
                                else {
                                    withAnimation {
                                        rotationNum += 20
                                        
                                        
                                    } completion : {
                                        withAnimation {
                                            rotationNum -= 20
                                        }
                                    }
                                    
                                    //if incorrect, maybe something with a rotationEffect with a phase animator
                                    //can do withAnimation, just have a variable with rotation effect and use a completion block to reset

                                    incorrectAnswers += 1
                                }
                                

                                
                            }
                    }
                    
                    
                }
                
                PrimaryButton(text: "Next") {
                    answerSelected = false
                    correctAnswerSelected = false
                    
                    if currentQuestionIndex < questions.count - 1 {
                        currentQuestionIndex += 1
                    }
                    
                    else {
                        currentQuestionIndex = 0
                        questions.shuffle()
                        isDone.toggle()
                    }
                }
                Spacer()
            }
        }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.984, green: 0.929, blue: 0.847))
                .navigationBarHidden(true)
        }
        
        
}


#Preview {
    QuestionView()
}
