//
//  Initalizer.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 16/12/25.
//

import SwiftUI

struct Initalizer: View {
     let backGroundColor: Color
     let count: Int
     let title: String
    
    init( count: Int ,fruit:Fruit ){
        self.count = count
        
        
        if fruit == .apple {
            self.title = "Apples"
            self.backGroundColor = .green
        }else{
            self.title = "Oranges"
            self.backGroundColor = .orange
        }
        
        
    }
    enum Fruit {
        case apple
        case orange
    }
    
    
    var body: some View {
        
        VStack {
            Text("\(count)")
                .foregroundColor(.white)
                .underline(true)
                .font(Font.largeTitle)
            
            Text("\(title)")
                .font(Font.title)
                .foregroundColor(.white)
            
            
        }
        
        .frame(width: 130, height: 130)
        
        .background(backGroundColor)
        .cornerRadius(10)
    }
        
}

#Preview {
    ZStack {
        // Screen-level background
        Color.black.opacity(0.8)
            .ignoresSafeArea()
        
        HStack {
            Initalizer(count: 30, fruit: .apple)
            Initalizer(count: 40, fruit: .orange)
        }
    }
}
