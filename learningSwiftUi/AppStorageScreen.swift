//
//  app_storge.swift
//  learningSwiftUi
//
//  Created by MacBook on 12/05/2024.
//

import SwiftUI

struct AppStorageScreen: View {
    @AppStorage("name") var currentName : String?
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentName ?? "add name here")
            
            if let name = currentName {
                Text(name)
            }
            
            Button("save".uppercased()) {
                currentName = "bdfuh"
            }
            
            
            
        }
        
    }
}

#Preview {
    AppStorageScreen()
}
