//
//  AnswerRow.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State var isSelected = false
    
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
        .background(.white)
        .clipShape(Capsule())
        .onTapGesture {
            isSelected = true
            
        }
        
        
    }
}

#Preview {
    AnswerRow(answer: Answer(text: "Single", isCorrect: true))

}
