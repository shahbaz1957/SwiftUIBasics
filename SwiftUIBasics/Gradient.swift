//
//  Gradient.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//

/*
    SwiftUI provides 3 main gradient types:
    
        Gradient             Use case
    -----------------------------------------
      1.LinearGradient    Straight line
      2.RadialGradient    From center outward
      3.AngularGradient   Circular / rotation
    
 1.-> LinearGradient    Straight line
 
     LinearGradient(
         colors: [.blue, .purple],
         startPoint: .top,
         endPoint: .bottom
     )
    
    RoundedRectangle(cornerRadius: 25)
     .fill(
         LinearGradient(
             colors: [.blue, .purple],
             startPoint: .topLeading,
             endPoint: .bottomTrailing
         )
     )
     .frame(width: 200, height: 200)
*/





import SwiftUI

struct Gradient: View {
    var body: some View {
        RoundedRectangle(cornerRadius:36)
            
            .fill(
//                LinearGradient(
//                    colors: [.blue, .yellow, .cyan,.red], // this is just array
//                    //startPoint: .top,
//                    //endPoint: .bottom
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing
//                )
                RadialGradient(
                    colors: [.yellow, .orange,.black],
                               center: .center,
                               startRadius: 10,
                               endRadius: 100
                           )
            )
        .frame(width: 300, height: 200)
    }
}

#Preview {
    Gradient()
}
