

import SwiftUI

struct BindingInSwift: View {
    
    @State var bgcColor: Color = .purple
    
    var body: some View {
        
        ZStack {
            
            bgcColor
                .ignoresSafeArea()
            
            BindingView(bgcColor: $bgcColor)
        }
    }
}

#Preview {
    BindingInSwift()
}

struct BindingView: View {
    @Binding var bgcColor: Color
    
    var body: some View {
        VStack {
            Button {
                bgcColor = .orange
            } label: {
                Text("Button")
                    .padding(.vertical,12)
                    .padding(.horizontal,27)
                    .bold()
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(7)
            }
        }
    }
}
