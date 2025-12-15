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
                            colors: [.blue, .purple, .pink, .red],
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
