//
//  AnimationView.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 17/12/25.
//

import SwiftUI

struct AnimationView: View {
    @State private var isAnimated: Bool = false
    var body: some View {
        ZStack{
            Color.red.opacity(0.6)
                    .ignoresSafeArea()
            
            VStack{
                Button("Click Me") {
                    withAnimation(Animation.default.repeatCount(5, autoreverses: true)) {
                        // put STATE changes here
                        isAnimated.toggle()
                    }
//                    withAnimation(Animation.default.repeatForever(autoreverses:  true)) {
//                        // put STATE changes here
//                        isAnimated.toggle()
//                    }
                }
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 15)
                .background(Color.blue)
                .cornerRadius(10)

                
                
                    
                
                    .padding(.vertical,40)
                RoundedRectangle(cornerRadius:isAnimated ? 30 : 25)
                    .fill(
                        isAnimated ? Color.red : Color.yellow
                    )
                    .frame(
                        width: isAnimated ? 100 : 300,
                        height: isAnimated ? 100 : 300
                    )
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    .offset( y : isAnimated ? 100 : 0)
                    

            }
            
            
        }
//
            
    }
}

#Preview {
    AnimationView()
}
