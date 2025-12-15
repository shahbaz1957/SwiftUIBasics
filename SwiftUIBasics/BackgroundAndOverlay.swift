//
//  BackgroundAndOverlay.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 15/12/25.
//

import SwiftUI

struct BackgroundAndOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(Font.system(size: 40))
            .foregroundColor(Color.white)
            
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), .pink, .red],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .shadow(color: .red ,radius: 10,x: 0,y: 10)
                    .frame(width: 100, height: 100)
                    .overlay(
                        Circle()
                            .fill(Color.cyan)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Circle()
                                    .frame(width: 35,height: 35)
                                    .foregroundColor(.blue)
                                    .overlay(
                                        Text("5")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    )
                                ),
                                alignment: .bottomTrailing
                            
                                
                    )
                
            )
        
    }
}

#Preview {
    BackgroundAndOverlay()
}
