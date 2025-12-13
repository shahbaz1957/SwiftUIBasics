//
//  ColorSwiftUIView.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//

import SwiftUI

struct ColorSwiftUIView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)

            // Default system color
            // .fill(Color.primary)

            // Using system colors directly
            // .fill(Color.red)

            // Using RGB values
            // .fill(Color(red: 0.2, green: 0.6, blue: 0.1))

            // Using HEX color (via extension)
            // .fill(Color(hex: "#3498db"))

            // Using custom color from Assets (BEST PRACTICE)
            .fill(Color("CustomColor"))

            .frame(width: 200, height: 200)
    }
}

#Preview {
    ColorSwiftUIView()
}
