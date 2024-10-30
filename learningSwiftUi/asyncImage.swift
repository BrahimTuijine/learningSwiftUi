//
//  LearnSwift.swift
//  learningSwiftUi
//
//  Created by MacBook on 30/04/2024.
//

import SwiftUI

struct LearnSwift: View {
    
    let url = URL(string: "https://picsum.photos/200/300")
    
        var body: some View {
            
            VStack {
                AsyncImage(url: url) { phase in
                    if let image = phase.image {
                        image.resizable()
                            .scaledToFill()
                            .frame( width: 300 ,height: 400)
                            .cornerRadius(10)
                    }else if phase.error != nil {
                        Text("error")
                    }else {
                        ProgressView()
                    }
                }
//                AsyncImage(url: url), content: { Image in
//                    Image.resizable()
//                        .scaledToFill()
//                        .frame( width: 300 ,height: 400)
//                        .cornerRadius(10)
//                }) {
//                    ProgressView()
//                }
                    
                    
                
            }.ignoresSafeArea()
        
            
    }
}

#Preview {
    LearnSwift()
}

