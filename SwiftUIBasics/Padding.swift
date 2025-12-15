//
//  Padding.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 15/12/25.
//

/*
 Common edges:

 1. -> .top ,.bottom,.leading,.trailing,.horizontal,.vertical
 
 2.
 VStack {
    // content
 }
 .padding()        // inner padding
 .background(...)
 .padding(.horizontal, 10) // outer padding

 
 3.
  ##Padding Order Matters
 
 Text("Hello")
     .padding()
     .background(Color.red)
 
 ----------------
 Text("Hello")
     .background(Color.red)
     .padding()
 ❌ Padding applied outside background
 
 
 
 
 
 
 // 🎯 Key Takeaway (Very Important)
 //
 // Padding affects layout based on WHERE it is placed
 // in the SwiftUI modifier chain.
 //
 // SwiftUI applies modifiers from TOP → BOTTOM.
 // Each modifier wraps the view produced by the previous one.
 //
 // Where you add `padding()` decides:
 //
 // 1️⃣ Inside spacing (content → background)
 // 2️⃣ Outside spacing (view → screen / parent)
 //
 // ----------------------------
 // Padding BEFORE background
 // ----------------------------
 //
 // Text("Hello")
 //     .padding()
 //     .background(Color.red)
 //
 // Result:
 // - Padding is INSIDE the background
 // - Background grows to include padding
 // - Used for cards, buttons, containers
 //
 // ----------------------------
 // Padding AFTER background
 // ----------------------------
 //
 // Text("Hello")
 //     .background(Color.red)
 //     .padding()
 //
 // Result:
 // - Padding is OUTSIDE the background
 // - Background wraps only the text
 // - Used to add spacing from edges
 //
 // ----------------------------
 // Rule to Remember ⭐
 //
 // padding() BEFORE background() → Inner spacing
 // padding() AFTER background()  → Outer spacing

 
 */


import SwiftUI

struct Padding: View {

    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding()
//            .background(Color.red)
//            .foregroundColor(.white)
//            .font(.title)
//            .cornerRadius(10)
//
        VStack{
            Text("Join Group")
                .font(.title)
                .bold()
                .foregroundStyle(
                        LinearGradient(
                            colors: [.green, .orange, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
            
            Text("This group is about Ios Develop job opportunities and also help to how to prepare for job and also how to apply for job")
//                .font(Font.body.italic())
                .font(.headline)
            
            
            Button {
                print("Login tapped")
            } label: {
                Text("Join")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 30)

            

        }
        .padding()
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5),radius: 10, x: 10, y: 10)
        )
        .padding(.horizontal,10)
        .multilineTextAlignment(.leading)
        
        
    }
}

#Preview {
    Padding()
}
