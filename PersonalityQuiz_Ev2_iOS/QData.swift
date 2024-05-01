//
//  QData.swift
//  PersonalityQuiz_Ev2_iOS
//
//  Created by Angel Meza on 30/04/24.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You sorround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischevous, yet mild-tempered, you enjoy doing thing on your own terms."
        case .rabbit:
            return "You love everything that's soft, You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and focus on the details. Slow and steady wins the rece"
        }
    }
}
