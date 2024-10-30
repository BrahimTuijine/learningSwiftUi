//
//  OnboardingScreen.swift
//  learningSwiftUi
//
//  Created by MacBook on 13/05/2024.
//

import SwiftUI

struct OnboardingScreen: View {
    @State var index : Int = 1
    @State var nameField : String = "brahim"
    var body: some View {
    
            ZStack {
                RadialGradient(
                    gradient:Gradient(colors: [Color.white, Color.purple]),
                    center:.topLeading,
                     startRadius: 5,
                    endRadius: UIScreen.main.bounds.height
                ).ignoresSafeArea()
        
                VStack {
                    if(index == 1){
                        welcomeScreen
                    }else {
                        askNameScreen
                    }
                   Spacer()
                    myButton
                }.foregroundStyle(.white).padding([.horizontal, .vertical], 30)
                      
            }
           
                    
            }
        

}

extension OnboardingScreen {
    
    private var myButton: some View {
        Text((index == 1 ?  "sign up" : "next").uppercased())
            .frame(maxWidth: .infinity)
            .padding()
            .foregroundColor(.purple)
            .font(.headline)
            .background(.white).cornerRadius(12)
            .onTapGesture {
                index += 1
            }
    }
  
       private var welcomeScreen: some View {
           VStack(spacing: 30) {
                Image(systemName: "heart.text.square.fill")
                    . resizable()
                    .scaledToFit()
                    .frame(width :200,height: 200)
                
                Text("find your match.".capitalized)
                    .underline()
                    .baselineOffset(10.0)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been  industry's standard dummy text ever.")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
            }
        }
    
    private var askNameScreen: some View {
        VStack(spacing: 20) {
                
            Text("what's your name?.".capitalized)
                .underline()
                .baselineOffset(10.0)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            TextField("your name here...", text: $nameField)
                .padding()
                .background(.white).cornerRadius(10)
        }
    }
    
}

#Preview {
    OnboardingScreen()
}
