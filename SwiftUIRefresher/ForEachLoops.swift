//
//  ForEachLoops.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/15/25.
//

import SwiftUI

struct ForEachLoops: View {
    
    let text: String = "ForEach Loops"
    let data: [String] = [
        "Hi",
        "Hello World",
        "How are you",
        "Hope you are doing well",
        "Nice to meet you"
    ]
    
    var body: some View {
        VStack {
            Text("For Each Loops in SwiftUI")
                .padding()
                .frame(maxWidth: .infinity,alignment: .topLeading)
                .font(.system(size: 35,weight: .heavy))
            
            Spacer()
            
//            For Each Loop
//            ForEach(0..<5) { index in
//                HStack {
//                    Circle()
//                        .foregroundStyle(.orange)
//                    Text("The circle number is \(index)")
//                }
//            }
//            .padding()
//            .background(.purple)
//            .foregroundStyle(.white)
//            .cornerRadius(15)
//            .frame(width: 245,height: 60)
            
            
//            ForEach(data.indices) { index in
//                Text("New Item: \(data[index])")
//                    .padding()
//            }
             
            Spacer()
        }
    }
}

#Preview {
    ForEachLoops()
}
