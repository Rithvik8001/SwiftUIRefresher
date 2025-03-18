// Animations in Swift


import SwiftUI

struct Animations: View {
    
    @State var isAnimated: Bool = false
    @State var bgcColor: Color = .purple
    
    var body: some View {
        
        ZStack {
            
            bgcColor
                .ignoresSafeArea()
            
            Button {
                isAnimated.toggle()
                bgcColor = .orange
                
            } label: {
                Text("Animated Button")
                    .padding(.vertical,12)
                    .padding(.horizontal,17)
                    .background(.black)
                    .foregroundStyle(isAnimated ? Color.white : Color.gray)
                    .cornerRadius(6)
                    .bold()
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            }
        }
    }
}

#Preview {
    Animations()
}
