//
//  ContentView.swift
//  task1
//
//  Created by Игорь Чаховский on 30.04.25.
//

import SwiftUI

struct ContentView: View {
    @State var shouldShowOnboarding: Bool = true
    @State private var isOn = false
    
    var body: some View {
        ZStack {
            Color(red: 28/255, green: 28/255, blue: 28/255)
                .ignoresSafeArea()

            
            VStack(alignment: .center) {
//                    Image(systemName: "xmark")
//                        .foregroundColor(.gray)
                
//                Spacer()
                HStack {
                    Text("Get")
                    Text("PRO")
                        .foregroundColor(.indigo)
                    Text("Access")
                }
                .foregroundColor(.white)
                .font(.system(size: 40))
                .fontWeight(.bold)
                .padding(.top, 126)
                .padding(.bottom, 20)
                
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.indigo)
                        Text("Increased search limits")
                    }
                    HStack {
                        Image(systemName: "square.stack.3d.down.right.fill")
                            .foregroundColor(.indigo)
                        Text("The most up-to-date data")
                    }
                    HStack {
                        Image(systemName: "staroflife.circle")
                            .foregroundColor(.indigo)
                        Text("The fastest Al model")
                    }
                    HStack {
                        Image(systemName: "hand.raised.slash.fill")
                            .foregroundColor(.indigo)
                        Text("Ad-free experience")
                    }
                }
                .foregroundColor(.white)
                .font(.system(size: 20))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                
                Spacer()
                
                HStack {
                    Toggle(isOn: $isOn) {
                        Text ("Enable Free Trial")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }
//                    .padding(.leading, 30)
//                    .padding(.trailing, 30)
                }
//                .frame(width: .infinity, height: 64)
                .frame(minWidth: 320, maxWidth: 460)
                .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                .background(Color(red: 36/255, green: 36/255, blue: 36/255))
                .clipShape(RoundedRectangle(cornerRadius: 44))
                
                    ZStack {
                        HStack(alignment: .bottom) {
                            VStack(alignment: .leading, spacing: 6) {
                                Text("Yearly Access")
                                Text("Just 199,99 PLN per year")
                                    .fontWeight(.semibold)
                            }
                            .foregroundColor(.white)
                            Spacer()
                            VStack() {
                                Text("3,84 PLN")
                                Text("per week")
                            }
                            .padding(.trailing, 32)
                            .foregroundColor(.white)
                        }
                        .frame(minWidth: 320, maxWidth: 460)
                        .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 16))
                        .background(Color(red: 36/255, green: 36/255, blue: 36/255))
                        .clipShape(RoundedRectangle(cornerRadius: 44))
                        .overlay(
                            RoundedRectangle(cornerRadius: 44)
                                .stroke(.indigo, lineWidth: 1)
                        )
                        
                        Text("BEST OFFER")
                            .frame(width: 108, height: 26)
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            .offset(x: 92,y: -35)
                    }
                    .padding(.top, 12)
                
                HStack {
                    Text("Weekly access")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("39,99 PLN")
                            .fontWeight(.semibold)
                        Text("per week")
                    }
                    .font(.system(size: 18))
                    .padding(.trailing, 30)
                    .foregroundColor(.white)
                    
                }
                .frame(minWidth: 330, maxWidth: 460)
                .padding(EdgeInsets(top: 12, leading: 42, bottom: 12, trailing: 0))
                .background(Color(red: 36/255, green: 36/255, blue: 36/255))
                .clipShape(RoundedRectangle(cornerRadius: 44))
//                .border(.white)

                //button
                Group {
                    Button(action: {}) {
                        Spacer()
                        Text("Continue")
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(minWidth: 330, maxWidth: 460)
                    .padding(20)
                    .background(.indigo)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                }
                .padding(.top, 4)
                
                HStack {
                    Spacer()
                    Image(systemName: "clock.fill")
                        .foregroundColor(.green)
                    Text("Auto-renewable. Cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                    Spacer()
                }
                
                HStack {
                    Text("Terms of Use")
                    Spacer()
                    Text("Privacy Policy")
                    Spacer()
                    Text("Restore")
                }
                .frame(minWidth: 320, maxWidth: 460)
                .foregroundColor(.gray)
                .font(.system(size: 16))
                .underline()
                .padding(EdgeInsets(top: 30, leading: 12, bottom: 0, trailing: 12))

            }
            .padding()
            
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            FinishOnboardingView(shouldShowOnboarding: $shouldShowOnboarding )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
