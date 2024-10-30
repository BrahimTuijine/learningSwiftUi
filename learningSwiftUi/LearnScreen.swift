//
//  LearnScreen.swift
//  learningSwiftUi
//
//  Created by MacBook on 17/05/2024.
//

import SwiftUI

struct LearnScreen: View {
    
    var body: some View {
        Menu("my menu") {
            
            ControlGroup(content: {
                Button("button 3") {
                    
                }
                Button("button 4") {
                    
                }
            })
            
            Button("button 1") {
                
            }
            Button("button 2") {
                
            }
        }
    
    }
}



#Preview {
    LearnScreen()
}
