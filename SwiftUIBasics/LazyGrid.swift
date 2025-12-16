//
//  LazyGrid.swift
//  SwiftUIBasics
//
//  Created by SHAHBAZ ALAM on 16/12/25.
//

import SwiftUI

struct LazyGrid: View {
    let columns:[GridItem] = [
        //        GridItem(.fixed(50),spacing: nil, alignment: nil),
        //        GridItem(.fixed(70),spacing: nil, alignment: nil),
        //        GridItem(.fixed(70),spacing: nil, alignment: nil),
        //        GridItem(.fixed(80),spacing: nil, alignment: nil),
        //        GridItem(.fixed(50),spacing: nil, alignment: nil)
        
        GridItem(.flexible(),spacing: nil, alignment: nil),
        GridItem(.flexible(),spacing: nil, alignment: nil),
        GridItem(.flexible(),spacing: nil, alignment: nil),
//        GridItem(.flexible(),spacing: nil, alignment: nil),
//        GridItem(.flexible(),spacing: nil, alignment: nil),
//        GridItem(.flexible(),spacing: nil, alignment: nil),
        
    ]
    var body: some View {
        
        
        ScrollView{
            
            Rectangle()
                .fill(
                    Color.mint
                )
                .frame(width: 400,height: 400)
                .cornerRadius(20)
                

             





            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section A")
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.green, .orange, .cyan,.yellow],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                            .frame( maxWidth:.infinity)
                            .padding(20)
                            .background(Color.white)
                            .font(.largeTitle)
                    ){
                        ForEach(0..<54){index in
                            Rectangle()
                                .fill(Color.cyan).opacity(0.6)
                                .frame(height: 150)
                            
                        }
                    }
                    Section(header:
                                Text("Section B")
                        .font(.largeTitle)

                        .foregroundStyle(
                            LinearGradient(
                                colors: [.red, .blue, .cyan],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                            .frame( maxWidth:.infinity)
                            .padding(20)
                            .background(Color.white)
                    ){
                        ForEach(0..<54){index in
                            Rectangle()
                                .fill(Color.teal).opacity(0.1)
                                .frame(height: 150)
                            
                        }
                    }
                }
            )
            
            
            
        }
        
    }
}

#Preview {
    ZStack{
        Color.black.opacity(0.8)
            .ignoresSafeArea()
        
        HStack{
            
            LazyGrid()
        }
    }
}
