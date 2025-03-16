

import SwiftUI

struct SafeArea: View {
    var body: some View {
        
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
                .padding()
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 170)
                    .foregroundStyle(.orange)
                    .padding(15)
            }
        }
        .background(
            Color.pink
                .ignoresSafeArea(.all)
        )
        
        
        
        
        
        
        
        
        
        
        
        
//        VStack {
//            Text("SafeArea in SwiftUI")
////                .ignoresSafeArea(.all)
//                .font(.system(size: 35,weight: .heavy))
//               
//            Spacer()
//        }
//        .frame(maxWidth: .infinity,maxHeight: .infinity)
////        .background(.orange)
////        .foregroundStyle(.white)
    }
}

#Preview {
    SafeArea()
}
