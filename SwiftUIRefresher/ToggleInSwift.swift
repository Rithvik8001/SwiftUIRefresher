//Toggle in swift

import SwiftUI

struct ToggleInSwift: View {
    
    @State var isToggled: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(isToggled ? "Online" : "Offline")
            }
            Toggle(
                isOn: $isToggled) {
                    Text("Label")
                }
            Toggle(
                isOn: .constant(true)) {
                    Text("Label")
                }
            Spacer()
        }
        .padding()
        
    }
}

#Preview {
    ToggleInSwift()
}
