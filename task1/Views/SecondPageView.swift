//
//  SecondPageView.swift
//  task1
//
//  Created by Игорь Чаховский on 2.05.25.
//

import SwiftUI

struct SecondPageView: View {
    
    @State var showAnamation: Bool = false
    
    var body: some View {
        
        
        ZStack {
            //backgroung layer
            Color(red: 28/255, green: 28/255, blue: 28/255)
                .ignoresSafeArea()
            
            VStack {
                Text(secondPagedAttributedString)
                    .transition(.move(edge: .trailing))
                
                VStack(alignment: .leading) {
                    Group {
                        Text("Type your question")
                            .foregroundColor(.gray)
                            .font(.system(size: 22))
                        //                    .frame(width: 30)
                            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 108))
                            .background(Color(red: 56/255, green: 54/255, blue: 57/255))
                            .clipShape(RoundedRectangle(cornerRadius: 44))
                            .overlay(
                                RoundedRectangle(cornerRadius: 44)
                                    .stroke(.gray, lineWidth: 1)
                            )
                            .opacity(0.5)
                    }
                    .padding(.top, 30)
                    
                    
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
                        .opacity(showAnamation ? 1 : 0)
                        .offset(y: showAnamation ? 0 : 10)
                        .animation(Animation.easeOut(duration: 0.4).delay(0.7), value: showAnamation)
                        
                        Divider()
                            .overlay(.gray).opacity(0.3)
                            .padding(.horizontal)
                            .opacity(showAnamation ? 1 : 0)
                            .offset(y: showAnamation ? 0 : 10)
                            .animation(Animation.easeOut(duration: 0.4).delay(0.6), value: showAnamation)
                        
                        HStack {
                            Image(systemName: "clock.arrow.circlepath")
                                .foregroundColor(.gray).opacity(0.75)
                            Text("World's best taco recipe")
                        }
                        .foregroundColor(.white).opacity(0.6)
                        .opacity(showAnamation ? 1 : 0)
                        .offset(y: showAnamation ? 0 : 10)
                        .animation(Animation.easeOut(duration: 0.4).delay(0.6), value: showAnamation)
                        
                        Divider()
                            .overlay(.gray).opacity(0.3)
                            .padding(.horizontal)
                            .opacity(showAnamation ? 1 : 0)
                            .offset(y: showAnamation ? 0 : 15)
                            .animation(Animation.easeOut(duration: 0.4).delay(0.5), value: showAnamation)
                        
                        
                            HStack {
                                Image(systemName: "clock.arrow.circlepath")
                                    .foregroundColor(.gray).opacity(0.85)
                                Text("What is Occam's razor?")
                            }
                            .foregroundColor(.white).opacity(0.75)
                            .opacity(showAnamation ? 1 : 0)
                            .offset(y: showAnamation ? 0 : 15)
                            .animation(Animation.easeOut(duration: 0.3).delay(0.5), value: showAnamation)
                        
                        
                        Divider()
                            .overlay(.gray).opacity(0.3)
                            .padding(.horizontal)
                            .opacity(showAnamation ? 1 : 0)
                            .offset(y: showAnamation ? 0 : 15)
                            .animation(Animation.easeOut(duration: 0.4).delay(0.3), value: showAnamation)
                        
                        
                        HStack {
                            Image(systemName: "clock.arrow.circlepath")
                                .foregroundColor(.gray).opacity(0.9)
                            Text("Risotto vs. paella")
                        }
                        .foregroundColor(.white).opacity(0.8)
                        .opacity(showAnamation ? 1 : 0)
                        .offset(y: showAnamation ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.5).delay(0.3), value: showAnamation)
                        
                        //                        HStack {
                        //                            Image(systemName: "clock.arrow.circlepath")
                        //                                .foregroundColor(.gray).opacity(0.9)
                        //                            Text("Risotto vs. paella")
                        //                        }
                        //                        .foregroundColor(.white).opacity(0.8)
                        
                        Spacer()
                        
                        Button(action: {
                            showAnamation.toggle()
                            print("hia")
                            
                        }) {
                            Text("animate")
                        }
                        
                        Text("Button")
                            .foregroundColor(.green)
                            .onTapGesture {
                                showAnamation.toggle()
                                print("some")
                            }
                        
                    }
                    
                    
                }
                .padding()
                .background(LinearGradient(colors: [.gray.opacity(0.2),.gray.opacity(0.02), .clear], startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 44))
                .padding()
                
                
            }
        }
    }
}

struct SecondPageView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageView(showAnamation: false)
    }
}

//private var secondPagedAttributedString: AttributedString {
//    var ask = AttributedString("Ask ")
//    ask.foregroundColor = .white
//    ask.font = .title.bold()
//    var attributedString = AttributedString("anything with\nadvanced search")
//    attributedString.foregroundColor = .white
//    attributedString.font = .title
//    return ask + attributedString
//}
