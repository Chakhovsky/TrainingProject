//
//  OnboardingModel.swift
//  task1
//
//  Created by Игорь Чаховский on 3.05.25.
//

import Foundation
import SwiftUI

struct OnboardingModel {
    var id: String = UUID().uuidString
    var title: AttributedString
}
//MARK: Attributed Strings
var onboardAttributedString: AttributedString {
    var search = AttributedString("Search ")
    search.foregroundColor = .white
    search.font = .title.bold()
    var theWeb = AttributedString("the web")
    theWeb.foregroundColor = .white
    theWeb.font = .title
    var smarter = AttributedString("smarter ")
    smarter.foregroundColor = .white
    smarter.font = .title.bold()
    var withTimely = AttributedString("with timely,")
    withTimely.foregroundColor = .white
    withTimely.font = .title
    var reliable = AttributedString("reliable ")
    reliable.foregroundColor = .white
    reliable.font = .title
    var answers = AttributedString("answers")
    answers.foregroundColor = .white
    answers.font = .title.bold()
    
    return search + theWeb + "\n" + smarter + withTimely + "\n" +
    reliable + answers
}

var secondPagedAttributedString: AttributedString {
    var ask = AttributedString("Ask ")
    ask.foregroundColor = .white
    ask.font = .title.bold()
    var attributedString = AttributedString("anything with\nadvanced search")
    attributedString.foregroundColor = .white
    attributedString.font = .title
    return ask + attributedString
}

var thirdPagedAttributedString: AttributedString {
    var attributedString = AttributedString("Get short & concise\n")
    attributedString.foregroundColor = .white
    attributedString.font = .title
    var answers = AttributedString("answers")
    answers.foregroundColor = .white
    answers.font = .title.bold()
    
    return attributedString + answers
}

var fourthPagedAttributedString: AttributedString {
    var attributedString = AttributedString("Reserch with\na personal ")
    attributedString.foregroundColor = .white
    attributedString.font = .title
    var assistant = AttributedString("assistant")
    assistant.foregroundColor = .white
    assistant.font = .title.bold()
    
    return attributedString + assistant
}
// MARK: Sample OnboardsView's
var onboards: [OnboardingModel] = [
    .init(title: onboardAttributedString),
    .init(title: secondPagedAttributedString),
    .init(title: thirdPagedAttributedString),
    .init(title: fourthPagedAttributedString)
]
