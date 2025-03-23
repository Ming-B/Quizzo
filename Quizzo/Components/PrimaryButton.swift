//
//  PrimaryButton.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = .purple
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(background)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    PrimaryButton(text: "Next", action: { print("Button tapped") })
}

