//
//  FinishOnboardingView.swift
//  task1
//
//  Created by Игорь Чаховский on 4.05.25.
//

import SwiftUI

struct FinishOnboardingView: View {
    //    @State var showOnboardScreen: Bool = false
    @State var currentIndex: Int = 0
    @State var showAnimation: Bool = false
    @State var showThirdAnimation: Bool = false
    
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            OnboardScreen()
        }
    }
    
    @ViewBuilder
    func OnboardScreen() -> some View {
        GeometryReader {
            let size = $0.size
            
            VStack {
                ZStack {
                    //MARK: OnboardingScreens
                    ForEach(onboards.indices, id: \.self) { index in
                        ScreenView(size: size, index: index)
                    }
                }
                
                //button
                Group {
                    Button(action: {
                        guard currentIndex < 4 else { return }
                        handleNextButtonPressed()
                    }) {
                        Spacer()
                        Text("Continue")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(minWidth: 230, maxWidth: 460)
                    .padding(20)
                    .background(.indigo)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                }
                .padding(.bottom, 6)
                
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
                .opacity(currentIndex == 0 ? 1 : 0)
            }
            //            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            
            
        }
        
    }
    
    @ViewBuilder
    func ScreenView(size: CGSize, index: Int) -> some View {
        let intro = onboards[index]
        
        VStack(spacing: 30) {
            
            HStack {
                Text(intro.title)
                    .frame(height: 120)
                    .offset(x: -size.width * CGFloat(currentIndex - index))
                    .animation(.interactiveSpring(response: 0.9, dampingFraction: 0.8, blendDuration: 0.5), value: currentIndex)
                Spacer()
            }
            .padding(.horizontal)
            
            switch currentIndex {
            case 0: welcomeSection
                    .transition(.opacity.animation(Animation.easeOut(duration: 0.6).delay(0.3)))
            case 1:
                searchSection
                    .transition(.opacity.animation(Animation.easeInOut(duration: 0.8).delay(0.3)))
            case 2:
                thirdSection
                    .transition(.opacity.animation(Animation.easeInOut(duration: 0.4).delay(0.1)))
                
            default: fourthSection
                    .transition(.opacity.animation(Animation.easeInOut(duration: 0.45).delay(0.4)))
            }
            
            Spacer()
            
        }
    }
}

struct FinishOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        FinishOnboardingView(shouldShowOnboarding: .constant(true))
    }
}


extension FinishOnboardingView {
    
    private var welcomeSection: some View {
        VStack {
            
            //            Spacer()
            //            Text("AI search tool. The most recent data.")
            //                .foregroundColor(.indigo)
            //            Spacer()
            //            Text(onboardAttributedString)
            
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
                }
                .foregroundColor(.white)
                .font(.system(size: 24))
                .padding(EdgeInsets(top: 10, leading: 24, bottom: 10, trailing: 96))
                .background(Color(red: 56/255, green: 54/255, blue: 57/255))
                .clipShape(RoundedRectangle(cornerRadius: 44))
                
            }
            Spacer()
            
        }
    }
    
    private var searchSection: some View {
        VStack(alignment: .leading) {
            
            Spacer()
            
            Group {
                HStack(spacing: 0) {
                    Text("|")
                        .font(.system(size: 32))
                        .offset(y: -2)
                    Text("Type your question")
                }
                .foregroundColor(.gray)
                .font(.system(size: 22))
                .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 90))
                .background(Color(red: 56/255, green: 54/255, blue: 57/255))
                .clipShape(RoundedRectangle(cornerRadius: 44))
                .overlay(
                    RoundedRectangle(cornerRadius: 44)
                        .stroke(.gray, lineWidth: 1)
                ).opacity(0.5)
            }
            .padding(.top, 20)
            
            
            Text("Search History")
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .opacity(0.5)
                .padding(.vertical, 30)
            
            Group {
                HStack {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.gray).opacity(0.75)
                    Text("Things to do in Rio")
                    
                }
                .foregroundColor(.white).opacity(0.5)
                .opacity(showAnimation == true ? 1 : 0)
                .offset(y: showAnimation == true ? 0 : 10)
                .transition(.move(edge: .top))
                
                Divider()
                    .overlay(.gray).opacity(0.3)
                    .padding(.horizontal)
                    .opacity(showAnimation == true ? 1 : 0)
                    .offset(y: showAnimation == true ? 0 : 10)
                    .transition(.move(edge: .top))
                
                HStack {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.gray).opacity(0.75)
                    Text("World's best taco recipe")
                }
                .foregroundColor(.white).opacity(0.6)
                .opacity(showAnimation == true ? 1 : 0)
                .offset(y: showAnimation == true ? 0 : 10)
                .transition(.move(edge: .top))
                
                Divider()
                    .overlay(.gray).opacity(0.3)
                    .padding(.horizontal)
                    .opacity(showAnimation == true ? 1 : 0)
                    .offset(y: showAnimation == true ? 0 : 15)
                    .transition(.move(edge: .top))
                
                
                HStack {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.gray).opacity(0.85)
                    Text("What is Occam's razor?")
                }
                .foregroundColor(.white).opacity(0.75)
                .opacity(showAnimation == true ? 1 : 0)
                .offset(y: showAnimation == true ? 0 : 15)
                .transition(.move(edge: .top))
                
                
                Divider()
                    .overlay(.gray).opacity(0.3)
                    .padding(.horizontal)
                    .opacity(showAnimation == true ? 1 : 0)
                    .offset(y: showAnimation == true ? 0 : 15)
                    .transition(.move(edge: .top))
                
                
                HStack {
                    Image(systemName: "clock.arrow.circlepath")
                        .foregroundColor(.gray).opacity(0.9)
                    Text("Risotto vs. paella")
                }
                .foregroundColor(.white).opacity(0.8)
                .opacity(showAnimation == true ? 1 : 0)
                .offset(y: showAnimation == true ? 0 : 20)
                .transition(.move(edge: .top))
            }
            
            
        }
        .frame(width: 320, height: 320)
        .padding()
        .background(LinearGradient(colors: [.gray.opacity(0.05),.gray.opacity(0.01), .clear], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 44))
        
    }
    
    private var thirdSection: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Image(systemName: "command")
                    .rotationEffect(Angle(degrees: 45))
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                    .opacity(0.5)
                
                Text("Sources")
                    .foregroundColor(.gray)
                    .font(.system(size: 16))
                    .opacity(0.5)
                    .padding(.vertical, 30)
                
                Spacer()
            }
            .padding(.horizontal)
            HStack(spacing: 8) {
                HStack(spacing: 6) {
                    Circle()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.green)
                    Text("data.worldbank.org")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .offset(x: showThirdAnimation == true ? 0 : 400)
                .transition(.move(edge: .leading))
                
                HStack(spacing: 6) {
                    Circle()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.pink)
                    Text("epi.org")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(Color.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .offset(x: showThirdAnimation == true ? 0 : 400)
                .transition(.move(edge: .leading))
            }
            
            Spacer()
            
            
        }
        .frame(width: 320, height: 320)
        .padding()
        .background(LinearGradient(colors: [.gray.opacity(0.05),.gray.opacity(0.01), .clear], startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 44))
        
        
    }
    
    private var fourthSection: some View {
        GeometryReader {
            let size = $0.size
            
            VStack(alignment: .leading, spacing: 6) {
                HStack(spacing: 12) {
                    //
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            Image(systemName: "repeat.circle.fill")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                        }
                        Text("Sync")
                        Text("across")
                        Text("devices")
                            .bold()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.03))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: (size.width/2-6), height: (size.height/3))
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            Image(systemName: "globe")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                        }
                        Text("\n")
                        Text("Search")
                        Text("in any language")
                            .bold()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.03))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: (size.width/2-6), height: (size.height/3))
                }
                
                HStack(spacing: 12) {
                    //
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                        }
                        Text("\n")
                        Text("Summarize")
                            .bold()
                        Text("search results")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.03))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: (size.width/2-6), height: (size.height/3))
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Spacer()
                            Image(systemName: "circle.fill")
                                .foregroundColor(.pink)
                                .font(.largeTitle)
                        }
                        Text("View")
                        Text("sourses")
                            .bold()
                        Text("and citations")
                            .bold()
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.03))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: (size.width/2-6), height: (size.height/3))
                }
                
                VStack(alignment: .leading) {
                    ZStack {
                        ZStack {
                            Image(systemName: "arrow.forward")
                                .resizable()
                                .foregroundColor(.gray.opacity(0.1))
                                .offset(x: 66, y: 50)
                                .frame(width: 90, height: 15)
                        }
                        HStack {
                            Spacer()
                            Spacer()
                            Image(systemName: "seal.fill")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                                .offset(y: 50)
                            Spacer()
                            Image(systemName: "star.fill")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                            Image(systemName: "circle.fill")
                                .foregroundColor(.indigo)
                                .font(.largeTitle)
                                .offset(y: 50)
                        }
                    }
                    Text("\n")
                    Text("Follow-up")
                        .bold()
                    Text("searches")
                        .bold()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.gray.opacity(0.03))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: size.width, height: (size.height/3))
            }
        }
    }
}


extension FinishOnboardingView {
    func handleNextButtonPressed() {
        withAnimation(.spring()) {
            currentIndex += 1
        }
        
        if currentIndex == 1 {
            withAnimation(Animation.easeIn(duration: 0.7).delay(0.9)) {
                showAnimation = true
            }
        }
        
        if currentIndex == 2 {
            withAnimation(Animation.easeOut(duration: 0.8).delay(0.6)) {
                showThirdAnimation = true
            }
        }
        
        if currentIndex == 4 {
            shouldShowOnboarding.toggle()
        }
    }
}


