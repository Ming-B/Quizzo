//
//  QuestionView.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Text("Trivia Game")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.purple)
                
                Spacer()
                
                Text("1 out of 5")
                    .foregroundStyle(.purple)
                    .fontWeight(.heavy)
                
            }
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Which country has the Union Jack in its flag?")
                    .font(.system(size:20))
                    .bold()
                    .foregroundStyle(.gray)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.929411764705824, blue: 0.8470588235294118))
    }
}

#Preview {
    QuestionView()
}
