// Tap gesture in swiftUI



import SwiftUI

struct TapGestureSwift: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .padding()
                .foregroundStyle(isSelected ? .purple : .orange)
                
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.title3)
                    .bold()
                    .padding(.vertical,12)
                    .padding(.horizontal,28)
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(7)
            }
            
            Text("Tap Gesture")
                .font(.title3)
                .bold()
                .padding(.vertical,12)
                .padding(.horizontal,28)
                .background(.black)
                .foregroundStyle(.white)
                .cornerRadius(7)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            Spacer()
        }
    }
}

#Preview {
    TapGestureSwift()
}
