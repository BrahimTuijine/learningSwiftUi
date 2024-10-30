//
//  animation.swift
//  learningSwiftUi
//
//  Created by MacBook on 14/10/2024.
//

import SwiftUI

struct LearnAnimation: View {
    
    @State private var animation1 : Bool = false
    @State private var animation2 : Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("button 1") {
                    animation1.toggle()
                }.padding(.top)
                
                Button("button 2") {
                    animation2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                        .frame(maxWidth: .infinity , alignment: animation1 ? .leading : .trailing)
                        .background(.green)
                        .frame(maxHeight: .infinity , alignment: animation2 ?.top : .bottom)
                        .background(.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.red)
            }
            .animation(.spring, value: animation1)
        }
        
     
    }
}

#Preview {
    LearnAnimation()
}
