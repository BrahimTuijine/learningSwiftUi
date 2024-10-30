//
//  ObservableMacro.swift
//  learningSwiftUi
//
//  Created by MacBook on 14/10/2024.
//

import SwiftUI

struct Post : Identifiable {
    let  id : String = UUID().uuidString
    let title : String
}

@Observable class Posts {
  var listOfPost : [Post] = [Post(title: "hello brahim")]
    
    func addPost(title : String) -> Void {
        
        listOfPost.append(Post(title: title))
    }
}

struct ObservableMacroView: View {
    
    @State private var myPosts : Posts = Posts()
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Button("add post") {
                    myPosts.addPost(title: "hello swiftfull thinking")
                }.padding()
                
                List(myPosts.listOfPost) { value in
                    Text(value.title)
                }
                
                
            }.navigationTitle("hello brahim")
        }
    }
}

#Preview {
    ObservableMacroView()
}
