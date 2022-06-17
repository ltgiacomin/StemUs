//
//  QuizData.swift
//  StemUs
//
//  Created by Larissa Giacomin on 2022/06/15.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, ranged, multiple
}

struct Answer{
    var text: String
    var type: StemField
}

enum StemField: String {
    case Mathematics = "Mathematics", Science = "Science", Engineering = "Engineering", Technology = "Technology"
    
    var definition: String {
        switch self {
        case .Mathematics:
            return "🧮Mathematicians work with a lot of theory and target very few practical applications. Even applied mathematics often centers around proofs. This of course does not rule out mathematics as practical, but if you are a very theoretically geared person, mathematics is a good fit.🧮"
        case .Science:
            return "🧪Science is generally theoretical also but is often at least about the 'real world' and less about the ideas of mathematics. Scientists look less for practical applications than an understanding of their field and adding new knowledge.🧪"
        case .Engineering:
            return "⚙️Engineers aim to design and invent. They solve problems to real-world applications.⚙️"
        case .Technology:
            return "📡Technologists are the nitty-gritty builders. They work practically and design things hands-on.📡"
        }
    }
}

