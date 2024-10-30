//
//  Button_styles.swift
//  learningSwiftUi
//
//  Created by MacBook on 13/10/2024.
//

import SwiftUI

struct Button_styles: View {
    var body: some View {
        VStack {
            
            Button("button title") {
                
            } .frame(height: 50)
            .frame(maxWidth: .infinity)
            .border(.blue)
            .foregroundColor(.blue)
        }.padding()
            
           
    }
}

#Preview {
    Button_styles()
}
