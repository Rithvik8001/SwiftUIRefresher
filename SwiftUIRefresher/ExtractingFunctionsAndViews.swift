

import SwiftUI

struct ExtractingFunctionsAndViews: View {
    
    @State var bgcColor: Color = .purple
    
    var body: some View {
        ZStack {
            bgcColor
                .ignoresSafeArea(.all)
            
//            Content
            contentLayer
        }
        .foregroundStyle(.white)
        
    }
    
    var contentLayer: some View {
        VStack {
            Text("My Title")
                .font(.largeTitle)
                .bold()
            
            Button {
                buttonPressed()
            } label: {
                Text("My Button")
                    .font(.headline)
                    .padding(.vertical,10)
                    .padding(.horizontal,17)
                    .background(.black)
                    .cornerRadius(5)
            }

        }

    }
    
    func buttonPressed() {
        bgcColor = .cyan
    }
}

#Preview {
    ExtractingFunctionsAndViews()
}
