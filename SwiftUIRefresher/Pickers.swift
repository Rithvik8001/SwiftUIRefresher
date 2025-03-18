// Pickers in swiftui

import SwiftUI

struct Pickers: View {
    
    @State var isPicked: String = "1"
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Age: ")
                Text(isPicked)
            }
            Picker(selection: $isPicked) {
                ForEach( 18..<100) { index in
                    Text("\(index)")
                        .tag("\(index)")
                }
            } label: {
                Text("Picker")
            }
            .frame(maxWidth: 300)
            .pickerStyle(WheelPickerStyle())
        }
    }
}

#Preview {
    Pickers()
}
