//
//  OnboardingView.swift
//  task1
//
//  Created by Игорь Чаховский on 1.05.25.
//

/*
 import SwiftUI
 
 struct OnboardingView: View {
 
 @Binding var shouldShowOnboarding: Bool
 
 var body: some View {
 ZStack {
 //backgroung layer
 Color(red: 28/255, green: 28/255, blue: 28/255)
 .ignoresSafeArea()
 
 //views
 VStack(alignment: .leading) {
 Spacer()
 Text("AI search tool. The most recent data.")
 .foregroundColor(.indigo)
 Spacer()
 Text(onboardAttributedString)
 
 Spacer()
 
 ZStack {
 Circle()
 .trim(from: 0.2, to: 1)
 .rotation(.degrees(54))
 .stroke(.white, lineWidth: 1)
 .frame(minWidth: 140, maxWidth: 270,
 minHeight: 140, maxHeight: 270)
 .opacity(0.1)
 
 Circle()
 .trim(from: 0.2, to: 1)
 .rotation(.degrees(54))
 .stroke(.white, lineWidth: 1)
 .frame(minWidth: 140, maxWidth: 265,
 minHeight: 140, maxHeight: 265)
 .opacity(0.1)
 .offset(x: 0, y: -10)
 
 Circle()
 .trim(from: 0.2, to: 1)
 .rotation(.degrees(54))
 .stroke(.white, lineWidth: 1)
 .frame(minWidth: 140, maxWidth: 260,
 minHeight: 140, maxHeight: 260)
 .opacity(0.1)
 .offset(x: 0, y: -20)
 
 HStack {
 Text("Welcome to")
 Text("Inscope")
 .fontWeight(.bold)
 Text("|")
 .font(.largeTitle)
 .foregroundColor(.accentColor)
 .offset(x: -6, y: -4)
 //                            .animation(.easeIn(duration: 0.5))
 //                            .transition(.opacity)
 }
 .foregroundColor(.white)
 .font(.system(size: 24))
 //                    .frame(width: 30)
 .padding(EdgeInsets(top: 10, leading: 24, bottom: 10, trailing: 96))
 .background(Color(red: 56/255, green: 54/255, blue: 57/255))
 .clipShape(RoundedRectangle(cornerRadius: 44))
 }
 
 Spacer()
 
 //button
 //                Group {
 //                    Button(action: { shouldShowOnboarding.toggle() }) {
 //                        Spacer()
 //                        Text("Continue")
 //                        Spacer()
 //                        Image(systemName: "arrow.right")
 //                    }
 //                    .foregroundColor(.white)
 //                    .fontWeight(.semibold)
 //                    .frame(minWidth: 230, maxWidth: 460)
 //                    .padding(20)
 //                    .background(.indigo)
 //                    .clipShape(RoundedRectangle(cornerRadius: 40))
 //                }
 //                .padding(.bottom, 6)
 
 HStack {
 Spacer()
 VStack(alignment: .center) {
 Text("By proceeding, you accept our")
 Text("Terms of Us and Privacy Policy.")
 .underline()
 }
 .foregroundColor(.gray)
 .font(.system(size: 14))
 Spacer()
 }
 
 
 }
 .padding(18)
 }
 
 }
 }
 
 struct OnboardingView_Previews: PreviewProvider {
 static var previews: some View {
 OnboardingView(shouldShowOnboarding: .constant(true))
 }
 }
 
 
 //private var onboardAttributedString: AttributedString {
 //    var search = AttributedString("Search ")
 //    search.foregroundColor = .white
 //    search.font = .title.bold()
 //    var theWeb = AttributedString("the web")
 //    theWeb.foregroundColor = .white
 //    theWeb.font = .title
 //    var smarter = AttributedString("smarter ")
 //    smarter.foregroundColor = .white
 //    smarter.font = .title.bold()
 //    var withTimely = AttributedString("with timely,")
 //    withTimely.foregroundColor = .white
 //    withTimely.font = .title
 //    var reliable = AttributedString("reliable ")
 //    reliable.foregroundColor = .white
 //    reliable.font = .title
 //    var answers = AttributedString("answers")
 //    answers.foregroundColor = .white
 //    answers.font = .title.bold()
 //
 //    return search + theWeb + "\n" + smarter + withTimely + "\n" +
 //    reliable + answers
 //}
 
 */
