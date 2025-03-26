//
//  ResultView.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct ResultView: View {
    @Binding var incorrectAnswers: Int
    @Binding var isDone: Bool

    var body: some View {
        VStack(spacing: 30) {
            Text("Quiz Completed!")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.heavy)
            
            Text("You selected the wrong answer \(incorrectAnswers) times.")
                .foregroundStyle(.gray)
                .fontWeight(.heavy)
            
            
            PrimaryButton(text: "Retake Quiz") {
                isDone = false
            }
            .fontWeight(.heavy)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984, green: 0.929, blue: 0.847))
        .navigationBarBackButtonHidden(true)


    }
}

#Preview {
    ResultView(incorrectAnswers: .constant(5), isDone: .constant(true))
}
