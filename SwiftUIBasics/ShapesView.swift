//
//  ShapesView.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//

import SwiftUI

struct ShapesView: View {
    var body: some View {
        // Circle()
 //        RoundedRectangle(cornerRadius: 40)
 //            .frame(width: 300, height: 200)
             
             //.fill(Color.red)
 //           .frame(width: 200, height: 200)
             //.scaleEffect(1.5)
            //.foregroundColor(.cyan)
            //.stroke()
             //.stroke(Color.red)
             //.stroke(Color.red,lineWidth: 10)
             //.frame(width: 200, height: 200)
         
            // .stroke(Color.blue,style:  StrokeStyle(lineWidth: 10, lineCap: .round, dash: [40]))
            // .frame(width: 200, height: 200)
             //.trim( from: 0.25, to: 1.0)
         
 //        ZStack {
 //            RoundedRectangle(cornerRadius: 40)
 //                .fill(Color.blue)
 //                .frame(width: 200, height: 100)
 //
 //            Text("Hello")
 //                .foregroundColor(.white)
 //                .font(.headline)
 //
 //        }
         
         ZStack {
             RoundedRectangle(cornerRadius: 40)
                 .fill(Color.blue)
                 .frame(width: 200, height: 100)

             VStack(spacing: 8) {
                 Text("Hello")
                     .foregroundColor(.white)
                     .font(.headline)

//                 Text("World")
//                     .foregroundColor(.white)
//                     .font(.headline)
             }
         }
    }
}

#Preview {
    ShapesView()
}





