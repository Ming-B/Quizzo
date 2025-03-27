//
//  AnswerRow.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @Binding var correctAnswerSelected: Bool
    @Binding var answerSelected: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            
            Text(answer.text)
                .bold()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundStyle(.purple)
        .background(answerSelected ? (correctAnswerSelected ? Color.green : Color.red) : Color.white)
        .clipShape(Capsule())



        
        
    }
}

#Preview {
    AnswerRow(answer: Answer(text: "Single", isCorrect: true), correctAnswerSelected: .constant(false), answerSelected: .constant(false))

}
