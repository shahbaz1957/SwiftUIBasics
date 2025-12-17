//
//  BindingVariable.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 17/12/25.
//

import SwiftUI

struct BindingVariable: View {
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    var body: some View {
        ZStack {
            
            // Background color controlled by state
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text(title)
                    .foregroundColor(.white)
                    .font(.title)
                
                // Passing bindings to child view
                ButtonViewBindind(
                    backgroundColor: $backgroundColor,
                    title: $title
                )
            }
        }
    }
}

#Preview {
    BindingVariable()
}



// MARK: - Child View
struct ButtonViewBindind: View {
    
    // Binding allows child to MODIFY parent state
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    // Local state (used only inside this view)
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = .pink
            title = "NEW TITLE!!!!!!"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
