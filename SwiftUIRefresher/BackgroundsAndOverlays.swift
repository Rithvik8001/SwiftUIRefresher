
import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        Text("Background and Overlays in SwiftUI")
            .padding()
            .font(.system(size: 30,weight: .heavy))
            .frame(maxWidth: .infinity,alignment: .topLeading)
            .multilineTextAlignment(.leading)
            
        Spacer()
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .foregroundStyle(.blue)
                    .frame(width: 100,height: 100)
            
            
            .shadow(radius: 12)
            .overlay(alignment: .bottomTrailing) {
                Circle()
                    .frame(width: 35,height: 45)
                    .foregroundStyle(.purple)
                    .overlay {
                        Text("1")
                            .foregroundStyle(.white)
                            .bold()
                            .font(.headline)
                    }
            }
        )
        Spacer()
    }
}

#Preview {
    BackgroundsAndOverlays()
}
