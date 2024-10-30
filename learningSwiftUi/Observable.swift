//
//  NewScreen.swift
//  learningSwiftUi
//
//  Created by MacBook on 07/05/2024.
//

import SwiftUI

struct Fruits:Identifiable {
    let id: String = UUID().uuidString
    let name : String;
    let count : Int;
}

class FruitViewModel: ObservableObject {
    @Published var myFruits: [Fruits] = []
    @Published var isLoading: Bool = true
    
    func addFruits() -> Void {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
       
            self.myFruits.append(
            contentsOf: [
                Fruits(name: "touffe7", count: 5),
                Fruits(name: "3nab", count: 10),
                Fruits(name: "orange", count: 5),
                Fruits(name: "orange", count: 5),
                Fruits(name: "della3", count: 3),]
            )
            self.isLoading.toggle()
        }
    }
    
    func removeFruit(index: IndexSet) -> Void {
        myFruits.remove(atOffsets: index)
    }
}

struct NewScreen: View {
    
//    @State var myFruits: [Fruits] = []
    
    @State var title : String = "FRUITS LIST"
    
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            
            VStack {
                if fruitViewModel.isLoading {
                    ProgressView()
                }else {
                    List {
                        ForEach(fruitViewModel.myFruits) { fruit in
                            HStack {
                                Text(fruit.name)
                                Spacer()
                                Text(String(fruit.count)).padding(.trailing, 10)
                            }
                            .padding().background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                        }.onDelete(perform: { indexSet in
                            fruitViewModel.removeFruit(index: indexSet)
                        })
                        
                    }.listStyle(.grouped)
                }
            }.navigationBarItems(trailing: Image(systemName: "xmark").onTapGesture {
                title = "fruits"
            })
            .navigationTitle(title)
            .onAppear {
                fruitViewModel.addFruits()
            }
            
            
                    
        }
    }
}

#Preview {
    NewScreen()
}

