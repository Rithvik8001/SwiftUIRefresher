// Dark Mode in Swift

import SwiftUI

struct DarkModeSwift: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is primary")
                        .foregroundStyle(.primary)
                    
                    Text("This color is secondary")
                        .foregroundStyle(.secondary)
                    
                    Text("This color is black")
                        .foregroundStyle(.black)
                    Text("This color is white")
                        .foregroundStyle(.white)
                    Text("This color is globaly adaptive")
                        .foregroundStyle(Color("adaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundStyle(colorScheme == .light ? .green : .pink)
                }
                .padding(40)
            }
            .navigationTitle("Dark Mode Support")
        }
    }
}

#Preview {
    DarkModeSwift()
        .preferredColorScheme(.light)
//    DarkModeSwift()
//        .preferredColorScheme(.dark)
}
