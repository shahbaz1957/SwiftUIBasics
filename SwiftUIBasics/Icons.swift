//
//  Icons.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//
           // sf symbol

import SwiftUI

/// Icons View
/// Demonstrates how SF Symbols behave with:
/// - font sizing
/// - frame
/// - clipping
/// - borders
/// - resizing options
struct Icons: View {
    
    var body: some View {
        Image(systemName: "apple.logo")
            
            // MARK: - Size & Scaling
            
            // SF Symbols scale using `font`
            // `.resizable()` is NOT required when using font-based symbols
            // .resizable()
            
            // Uncomment ONE of the following to test scaling behavior
            // .scaledToFit()     // Keeps aspect ratio, fits inside frame
            // .scaledToFill()    // Fills frame, may crop content
            
            // Sets the symbol size
            .font(.system(size: 340))
            
            
            // MARK: - Appearance
            
            // Sets the symbol color
            .foregroundColor(.black)
            
            
            // MARK: - Layout
            
            // Defines layout space for the image
            .frame(width: 300, height: 300)
            
            
            // MARK: - Debugging & Visual Boundaries
            
            // Adds a visible rectangular border (for layout debugging)
            // NOTE: `.border` is always square (no corner radius support)
            .border(Color.blue, width: 3)
            
            
            // Clips content that overflows outside the frame
            // Useful when using `.scaledToFill()`
            .clipped()
            
            
            // MARK: - Rounded Border (Alternative to `.border`)
            
            // Use overlay + RoundedRectangle for rounded borders
            /*
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.cyan, lineWidth: 3)
            )
            */
    }
}

#Preview {
    Icons()
}
