//
//  ExtractSubView.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 17/12/25.
//

import SwiftUI

struct ExtractSubView: View {
    var body: some View {
        ZStack {
                 
                 // Background
                 Color.blue
                     .edgesIgnoringSafeArea(.all)
                 
                 // Extracted content layer
                 contentLayer
             }
    }
}
// MARK: - Extracted Subview
   var contentLayer: some View {
       HStack(spacing: 16) {
           MyItem(title: "Apples", count: 1, color: .red)
           MyItem(title: "Oranges", count: 10, color: .orange)
           MyItem(title: "Bananas", count: 34, color: .yellow)
       }
   }

#Preview {
    ExtractSubView()
}


// MARK: - Resuable Components

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack(spacing: 8) {
            Text("\(count)")
                .font(.headline)
            
            Text(title)
                .font(.subheadline)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
