//
//  StateVariable.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 17/12/25.
//

/*
 
 What is a State Variable in SwiftUI?

     A state variable is a value that:

        1.Changes over time

        2.Controls the UI

        3.Automatically refreshes the screen when it changes
 
 In SwiftUI, state variables are created using:
    @State
 
 
 ## Why do we need @State?

 SwiftUI views are structs (value types).
 They do not remember changes by default.

    @State gives SwiftUI a way to:
        .Store data outside the struct
        .Track changes
        .Rebuild the UI when the value changes
 
 
## Basic Example
 
 struct StateExample: View {
     @State var count = 0

     var body: some View {
         VStack(spacing: 20) {
             Text("Count: \(count)")

             Button("Increase") {
                 count += 1
             }
         }
     }
 }

 What happens here?
    .count starts at 0
    .Button tap → count changes
    .SwiftUI automatically redraws the view
 
 
 
 
 ##Always mark it private
 
     Best practice:
        @State private var isOn = false
 
 We use private because:
    @State should be used only inside the view that owns it.

 ## What private means here
 private means:
     This variable can be used only inside this view
     Other files or views cannot access it directly

 */

import SwiftUI

struct StateVariable: View {
    // View-local state (should be private)
    @State private var isLightOn = false
    
    var body: some View {
        VStack(spacing: 20) {
                   
                   Text(isLightOn ? "💡 Light ON" : "🌑 Light OFF")
                       .font(.title)
                       .foregroundColor(isLightOn ? .green : .red)
                   
                   Button("Toggle Light") {
                       isLightOn.toggle()
                   }
                   .padding()
                   .background(Color.blue)
                   .foregroundColor(Color.white)
                   .cornerRadius(10)
                   
               }
    }
}

#Preview {
    StateVariable()
}
