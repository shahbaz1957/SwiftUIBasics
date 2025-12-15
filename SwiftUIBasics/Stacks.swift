//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 15/12/25.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.gray)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
        // ## Spacing
//        VStack(spacing: 0) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.gray)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
        ZStack{
            Rectangle()
                .frame(width: 370, height: 600)
                .cornerRadius(20)
            
            VStack(spacing: 0){
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Text("6")
                            .font(.title)
                            .foregroundColor(.white)
                    )
                    .cornerRadius(5)
                    
                
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 80, height: 80)
                        .cornerRadius(5)
                    
                    Rectangle()
                        .fill(Color.gray)
                        .frame(width: 110, height: 110)
                        .cornerRadius(5)
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 140, height: 130)
                        .cornerRadius(5)
                Text("Happy Birthday")
                    .font(.title)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.red, .blue,.yellow],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                }
            
        }
    }
}

#Preview {
    Stacks()
}
