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
    @State var isSelected = false
    @State private var scale = 1.0
    @State private var isDone = false
    
    @State private var questions: [Question] = QuizzoQuestions.shuffled()
    
    var body: some View {
        
        VStack(spacing: 20) {
            // if done { ResultView() } else {
            if isDone {
                ResultView(incorrectAnswers: $incorrectAnswers)
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
                        AnswerRow(answer: answer)
                            .scaleEffect(scale)
                            .onTapGesture {
                                guard !isSelected else {return}
                                isSelected = true
                                
                                if answer.isCorrect {
                                    withAnimation(.linear) {
                                        scale = 20.0
                                    } completion: {
                                        scale = 1.0
                                    }
                                    
                                    correctAnswerSelected = true
                                    
                                }
                                
                                else {
                                    incorrectAnswers += 1
                                }
                                
                            }
                    }
                    
                }
                PrimaryButton(text: "Next") {
                    isSelected = false
                    correctAnswerSelected = false
                    
                    if currentQuestionIndex < questions.count - 1 {
                        currentQuestionIndex += 1
                    }
                    
                    else {
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
