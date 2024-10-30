//
//  TextBootcamp.swift
//  learningSwiftUi
//
//  Created by MacBook on 24/04/2024.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("hello ").multilineTextAlignment(.center)
            .frame(width: 100, height: 100, alignment: .leading)
            .baselineOffset(10)
            .foregroundColor(.red)
    
  
    }
}

#Preview {
    TextBootcamp()
}
