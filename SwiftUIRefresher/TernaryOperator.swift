// Ternary operators in swift


import SwiftUI

struct TernaryOperator: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isStartingState.toggle()
            } label: {
                Text("hey")
                RoundedRectangle(cornerRadius: isStartingState ? 25 : 4)
                    .frame(width: isStartingState ? 310 : 220 ,height: isStartingState ? 220 : 140)
                    .foregroundStyle(isStartingState ? Color.purple : Color.blue)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TernaryOperator()
}
