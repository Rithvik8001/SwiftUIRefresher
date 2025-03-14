// VStack -> Vertical Alignments
// Hstack -> Horizontal Alignments
// ZStack -> Z-index elements stacks on top of each other. ( behind each other )
// Stacks come with default spacing -> can change the default spacing with the spacing modifer, same for alignment aswell.


import SwiftUI

struct Stacks: View {
    var body: some View {
        ZStack {
            
            VStack(alignment: .center,content: {  // we can do this make no space between the elements if needed.
                Rectangle()
                    .foregroundStyle(Color.red)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(Color.purple)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(Color.green)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
            })
            
            HStack {
                Rectangle()
                    .foregroundStyle(Color.red)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(Color.purple)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
                Rectangle()
                    .foregroundStyle(Color.cyan)
                    .frame(width: 100,height: 100)
                    .cornerRadius(10)
            }
        }
//        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.yellow)
        .cornerRadius(15)
    }
}

#Preview {
    Stacks()
}
