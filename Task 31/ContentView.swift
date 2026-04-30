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
        Text("Tap Station")
            .clipShape(RoundedRectangle(cornerRadius:28.0))
            .padding(20)
           
            .background(Color.gray)
        ZStack {
            
           
            StationView()
           
            Button{
               withAnimation(.easeOut(duration: 2.5)){
                    showTrain = !showTrain
                }
            } label: {
                if showTrain {
                    TrainView()
                        .transition(.move(edge: .leading))
                }else {
                    VStack{
                        StationView()
                        
                    }
                }
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
