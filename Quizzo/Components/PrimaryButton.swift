//
//  PrimaryButton.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.purple)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    PrimaryButton(text: "Next", action: { print("Button tapped") })
}

