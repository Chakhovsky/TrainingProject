//
//  TabViewTest.swift
//  task1
//
//  Created by Игорь Чаховский on 1.05.25.
//

import SwiftUI

struct TabViewTest: View {
    
    
    @Binding var shouldShowOnboarding: Bool
    @Binding var showAnamation: Bool
    @State var selection = 0
    
    var body: some View {
        ZStack {
            //backgroung layer
            Color(red: 28/255, green: 28/255, blue: 28/255)
                .ignoresSafeArea()
            
            VStack {
                
                //content
                TabView(selection: $selection) {
//                    OnboardingView(shouldShowOnboarding: .constant(true))
//                        .tag(0)
                    
                    createView()
                        .tag(1)
                    
                    Text("third")
                        .tag(2)
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                .ignoresSafeArea()
                
                //button
                Group {
                    Button(action: {
                        print("ho")
                        guard selection < 2 else { return }
                        selection += 1
                        
                    
                        if selection == 0 {
                            showAnamation = false
                        }
                        
                        if selection == 1 {
                            print("section1")
                            showAnamation.toggle()
                            }
                        
                        if selection == 2 {
                            shouldShowOnboarding.toggle()
                        }
                        
                        
                        
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
                .padding(.bottom)
            }
        }
    }
}


struct TabViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TabViewTest(shouldShowOnboarding: .constant(true), showAnamation: .constant(false))
    }
}


extension TabViewTest {
    func createView() -> some View {
        SecondPageView(showAnamation: true)
    }
}
