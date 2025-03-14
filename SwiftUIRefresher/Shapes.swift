
import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack{
            Text("Shapes")
                .padding()
                .font(.system(size: 35,weight: .heavy))
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            Spacer()
            
            Circle()
                .fill(.purple)
                .frame(width: 250,height: 250)
                
            Spacer()
            
            Ellipse()
                .fill(.orange)
                .frame(width: 250,height: 150)
            
            Spacer()
            
            Capsule()
                .fill(.green)
                .frame(width: 250,height: 150)
            
            Spacer()
                
        }
        
       
        
    }
}

#Preview {
    Shapes()
}
