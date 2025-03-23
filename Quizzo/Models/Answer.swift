//
//  Answer.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
