//
//  Spacer.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 15/12/25.
//

import SwiftUI

struct Spacer: View {
    var body: some View {
        HStack(spacing: 30){
            
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 50,height: 50)
                
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 50,height: 50)
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 50,height: 50)
            
        }
        .background(Color.blue)
        .padding(.horizontal,100)
        .background(Color.black)
    }
}

#Preview {
    Spacer()
}
