// ContextMenu in Swift.

import SwiftUI

struct ContextMenuSwift: View {
    
    @State var inputText: String = ""
    var body: some View {
        VStack {
            TextField("Type Something here..",text: $inputText)
                .padding()
                .cornerRadius(7)
                .frame(maxWidth: 360)
                .border(Color.gray,width: 1.5)
        }
    }
}

#Preview {
    ContextMenuSwift()
}
