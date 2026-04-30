//
//  Train View.swift
//  Task 31
//
//  Created by Alexander Siener on 4/29/26.
//

import Foundation
import SwiftUI

struct TrainView: View {
    var body: some View {
        
        VStack {
            
                HStack {
                    Image(systemName: "train.side.rear.car")
                    Image(systemName: "train.side.middle.car")
                    Image(systemName: "train.side.front.car")
                    
                }
                .transition(.move(edge: .leading))
                .font(.system(size: 80))
                .foregroundStyle(Color.blue)
            }
            
        }
    
    }


#Preview {
    TrainView()
}
