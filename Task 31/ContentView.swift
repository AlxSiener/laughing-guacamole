//
//  ContentView.swift
//  Task 31
//
//  Created by Alexander Siener on 4/29/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showTrain: Bool = false
    var body: some View {
        VStack {
            
            if showTrain {
                TrainView()
                    .transition(.move(edge: .leading))
            }
            
           Text("welcome to the app")
            Button{
               withAnimation(.easeOut(duration: 2.5)){
                    showTrain = !showTrain
                }
            } label: {
                Text("Show Train")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
