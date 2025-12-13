//
//  Images.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//

import SwiftUI

/// Images View
/// Demonstrates how asset images behave with:
/// - resizable images
/// - scaling modes
/// - frames
/// - clipping shapes
/// - borders
struct Images: View {
    
    var body: some View {
        Image("apple-icon")
            
            // MARK: - Resizing
            
            // Allows the image to resize beyond its original size
            .resizable()
            
            
            // MARK: - Scaling
            
            // `.scaledToFill()` fills the frame completely
            // NOTE: This may crop parts of the image
            .scaledToFill()
            
            
            // MARK: - Layout
            
            // Defines the layout space for the image
            .frame(width: 110, height: 120)
            
            
            // MARK: - Debugging / Visual Boundaries
            
            // Adds a visible rectangular border
            // Useful for understanding frame size
            .border(Color.black)
            
            
            // MARK: - Clipping
            
            // Clips the image to a specific shape
            // Try different shapes by uncommenting
            
            .clipShape(
                // Circle()     // Circular image
                // Ellipse()   // Oval image
                Rectangle()   // Default rectangular clipping
            )
    }
}

#Preview {
    Images()
}
