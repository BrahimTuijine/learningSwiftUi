//
//  ContentView.swift
//  learningSwiftUi
//
//  Created by MacBook on 22/04/2024.
//

import SwiftUI

struct GridView: View {
    let column : [GridItem] = [
        GridItem(.flexible(), spacing: 0, alignment: nil),
    ]
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: column, spacing: nil,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                Section {
                    ForEach(0..<20) { index in
                        Rectangle().fill(.red).frame(height: 50).overlay(content: {
                            Text("\(index)").foregroundColor(.white)
                        })
                            
                    }
                } header: {
                    Text("header one").padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
                Section {
                    
                ForEach(0..<20) { index in
                    Rectangle().fill(.red).frame(height: 50).overlay(content: {
                        Text("\(index)").foregroundColor(.white)
                    })
                        
                }
            } header: {
                Text("header two").font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
            }

                
            })
        }.padding(.horizontal).background(.orange)
    }
}
    
#Preview {
    GridView()
}

struct MyCustomView: View {
    init(title: String , number: Int) {
        self.backgroundColor = .orange
        self.number = number
        self.title = title
        
        if self.title == "apple" {
            self.backgroundColor = .red
        }
    }
    var backgroundColor : Color
    let number : Int
    let title : String
    var body: some View {
        VStack {
            Text("\(number)").font(.title).underline().foregroundColor(.white)
            
            Text("\(title)").foregroundColor(.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            
            
        }.frame(width: 150, height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}



