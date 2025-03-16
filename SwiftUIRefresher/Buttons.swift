//
//  Buttons.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/15/25.
//

import SwiftUI

struct Buttons: View {
    
    @State var name: String = "Btn is not pressed"
    var body: some View {
        Text("Buttons in SwiftUI")
            .font(.system(size: 35,weight: .heavy))
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
        
        Spacer()
        
        Text(name)
        
        Button {
            self.name = "Btn was pressed"

        } label: {
            Text("Click me")
                .padding(.vertical,15)
                .padding(.horizontal,30)
                .background(
                    Color.black
                        .shadow(radius: 24)
                )
                .foregroundStyle(.white)
                .cornerRadius(10)
                .font(.system(size: 18,weight: .heavy))
        }
        
        
        Spacer()

    }
}

#Preview {
    Buttons()
}
