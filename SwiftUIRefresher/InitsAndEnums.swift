//
//  InitsAndEnums.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/15/25.
//

import SwiftUI

struct InitsAndEnums: View {
    
    let title:String
    let fruitsNumber: Int
    
    init(title: String, fruitsNumber: Int) {
        self.title = title
        self.fruitsNumber = fruitsNumber
    }
    
    var body: some View {
        VStack{
            Text("\(fruitsNumber)")
                .underline()
            Text(title)
            
        }
        .frame(width: 150,height: 150)
        .background(.red)
        .foregroundStyle(.white)
        .cornerRadius(10)
        .font(.system(size: 25,weight: .heavy))
    }
}

#Preview {
    InitsAndEnums(title: "Apples",fruitsNumber: 12)
}
