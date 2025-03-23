//
//  ContentView.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showQuiz = false

    var body: some View {
        ZStack {
            if showQuiz {
                QuestionView()
                    .transition(.scale)
            } else {
                VStack(spacing: 40) {
                    VStack(spacing: 20) {
                        Text("Quizzo")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(.purple)
                        
                        Text("Are you ready to test your knowledge?")
                            .foregroundStyle(.purple)
                    }
                    
                    Button(action: {
                        withAnimation {
                            showQuiz = true
                        }
                    }) {
                        PrimaryButton(text: "Start", action: {})
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 0.984, green: 0.929, blue: 0.847))
                .ignoresSafeArea()
            }
        }
    }
}


#Preview {
    ContentView()
}
