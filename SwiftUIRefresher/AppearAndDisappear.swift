// OnAppear and onDisappear in swiftUI

import SwiftUI

struct AppearAndDisappear: View {
    @State var myText: String = "My text"
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("\(myText)")
                
            }
            .onAppear(perform: {
                myText = "This is a new text"
            })
            .onDisappear(perform: {
                myText = "Text is cleaned"
            })
            .navigationTitle("On Appear SwiftUI")
        }
    }
}

#Preview {
    AppearAndDisappear()
}
