//
//  Text.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/13/25.
//

import SwiftUI

struct TextModifier: View {
    var body: some View {
        Text("Hey Guys this is a Text Modifier in swiftUI. ")
            .font(.title)
            .bold()
            .baselineOffset(5.0)
            .multilineTextAlignment(.center)
            .foregroundStyle(.purple)
            .frame(width: 300,height: 250, alignment: .topLeading)
            
    }
}

#Preview {
    TextModifier()
}
