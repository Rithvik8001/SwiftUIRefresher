
import SwiftUI

struct IfElse: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack {
            Button {
                showCircle.toggle()
            } label: {
                Text("Circle Button:  \(showCircle.description)")
            }
            
            Button {
                showRectangle.toggle()
            } label: {
                Text("Rectangle Button: \(showRectangle.description)")
            }

            if showCircle && showRectangle {
                Circle()
                    .frame(width: 100,height: 100)
                    .foregroundStyle(.orange)
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 200,height: 100)
                    .foregroundStyle(.purple)
            }
            else if showCircle {
                Circle()
                    .frame(width: 100,height: 100)
                    .foregroundStyle(.orange)
            }
            
            else if showRectangle {
                RoundedRectangle(cornerRadius: 12)
                    .frame(width: 200,height: 100)
                    .foregroundStyle(.purple)
            }
        }
    }
}

#Preview {
    IfElse()
}
