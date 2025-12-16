//
//  ForEachLoop.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 16/12/25.
//

import SwiftUI

struct ForEachLoop: View {
    var body: some View {
        VStack {
            ForEach(0..<5) { index in
                Text("Item :- \(index)")
                    .font(.title)
                    .frame(width: 120,height: 80)
                    .foregroundStyle(Color.white)
                    .background(Color.red)
                    .cornerRadius(10)
                    
            }
        }

    }
}

#Preview {
    
    ZStack {
            // Screen-level background
        Color.black.opacity(0.8)
                .ignoresSafeArea()
            
            HStack {
                ForEachLoop()
            }
        }
}
