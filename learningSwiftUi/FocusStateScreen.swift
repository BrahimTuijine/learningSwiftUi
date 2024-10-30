//
//  Learning.swift
//  learningSwiftUi
//
//  Created by MacBook on 14/05/2024.
//

import SwiftUI

struct FocusStateScreen: View {
    enum LearningScreen {
       case name
       case password
    }
    
    @FocusState private var  feldInfocus : LearningScreen?
    @State private var  name : String = ""
    @State private var  password : String = ""
    
    var body: some View {
        VStack {
              
            TextField("add ur username", text: $name)
                .focused($feldInfocus, equals: .name)
                /*focused($usernameF)*/
                .padding()
                .background()
                .cornerRadius(10)
                .shadow(radius: 3)
                .submitLabel(.route)
            
            TextField("add ur password", text: $password)
                .focused($feldInfocus, equals: .password)
//                .focused($passwordF)
                .padding()
                .background()
                .cornerRadius(10)
                .shadow(radius: 3)
            
            Button("next feild") {
                if !name.isEmpty {
                    feldInfocus = .password
                }
            }
            
        }.padding().onAppear {
            feldInfocus = .name
        }
           
    }
}

#Preview {
    FocusStateScreen()
}
