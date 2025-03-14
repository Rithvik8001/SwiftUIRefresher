import SwiftUI

struct FramesAndAlignment: View {
    var body: some View {
        
        Text("Frames")
            .font(.system(size: 45,weight: .heavy))
            .frame(maxWidth: .infinity,alignment: .topLeading)
            .padding(.horizontal,15)
        Spacer()
        
        Rectangle()
            .frame(width: 350,height: 150,alignment: .center)
            .cornerRadius(12)
            .foregroundStyle(.purple)
        
        Text("Fames are tough!!!!")
            .background(.orange)
            .frame(height: 100,alignment: .topLeading)
            .background(.pink)
            .frame(height: 150)
            .background(.green)
            .frame(maxWidth: .infinity,alignment: .leading)
            .background(.yellow)
            .frame(height: 400)
            .background(.red)
            .frame(maxHeight: .infinity,alignment: .topLeading)
            .background(.brown)
            
        Spacer()
    }
}

#Preview {
    FramesAndAlignment()
}
