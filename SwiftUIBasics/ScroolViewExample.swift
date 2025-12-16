//
//  ScroolViewExample.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 16/12/25.
//

import SwiftUI

struct ScroolViewExample: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            ForEach(0..<100){index in
                VStack{
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(0..<50) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .shadow(radius: 10)
                                    .frame(width: 200, height: 150)
                                    
                                    .overlay(content: {
                                        Text("Shahbaz Alam")
                                            .foregroundColor(.cyan)
                                    })
                            }
                        }
                        .padding()
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ScroolViewExample()
}
