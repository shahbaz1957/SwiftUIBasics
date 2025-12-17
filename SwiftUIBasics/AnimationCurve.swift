//
//  AnimationCurve.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 17/12/25.
//

import SwiftUI

struct AnimationCurve: View {
    @State private var isAnimating = false
    let timing: Double = 10.0
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(
                    width: isAnimating ? 350 : 50,
                    height: 100
                )
            
            //                .animation(.spring())
                .animation(
                    .spring(
                        response: 0.4,
                        dampingFraction: 1.0,
                        blendDuration: 1.0
                    ),
                    value: isAnimating
                )
        
            
            
            //            // Linear
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(
            //                    width: isAnimating ? 350 : 50,
            //                    height: 100
            //                )
            //                .animation(.linear(duration: timing), value: isAnimating)
            //
            //            // Ease In
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(
            //                    width: isAnimating ? 350 : 50,
            //                    height: 100
            //                )
            //                .animation(.easeIn(duration: timing), value: isAnimating)
            //
            //            // Ease In Out
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(
            //                    width: isAnimating ? 350 : 50,
            //                    height: 100
            //                )
            //                .animation(.easeInOut(duration: timing), value: isAnimating)
            //
            //            // Ease Out
            //            RoundedRectangle(cornerRadius: 20)
            //                .frame(
            //                    width: isAnimating ? 350 : 50,
            //                    height: 100
            //                )
            //                .animation(.easeOut(duration: timing), value: isAnimating)
        }
        .padding()
    }
}

#Preview {
    AnimationCurve()
}
