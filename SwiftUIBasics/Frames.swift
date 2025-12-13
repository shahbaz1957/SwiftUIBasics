//
//  Frames.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 13/12/25.
//

import SwiftUI

struct Frames: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .center)
            .background(Color.yellow)
    }
}

#Preview {
    Frames()
}
