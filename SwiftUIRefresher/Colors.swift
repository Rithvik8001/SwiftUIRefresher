import SwiftUI

struct Colors: View {
    var body: some View {
        Text("Colors")
            .padding(.horizontal,20)
            .font(.system(size: 50,weight: .heavy))
            .frame(maxWidth: .infinity,alignment: .topLeading)
        
        Spacer()
        
        RoundedRectangle(cornerRadius: 12)
            .frame(width: 300,height: 150)
            .foregroundStyle(.purple)
            .shadow(radius: 5)
        
        Spacer()
        
        Ellipse()
            .frame(width: 150,height: 100)
            .foregroundStyle(.orange)
            .shadow(radius: 3)
        
        Spacer()
    }
}

#Preview {
    Colors()
}
