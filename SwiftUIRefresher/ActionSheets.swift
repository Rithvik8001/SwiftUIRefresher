// Action sheet in swift -> Similar to alert but pops up from bottom of the screen


import SwiftUI

struct ActionSheets: View {
    
    @State var actionSheet: Bool = false
    var body: some View {
        VStack {
            Button {
                actionSheet.toggle()
            } label: {
                Text("My Button")
                    .padding(.vertical,12)
                    .padding(.horizontal,24)
                    .font(.system(size: 20))
                    .bold()
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(7)
            }
            .confirmationDialog("Are you sure you want to proceed?", isPresented: $actionSheet, titleVisibility: .visible) {
                Button {
                    print("Button Deleted")
                } label: {
                    Text("Delete")
                    
                }
            }
        }
    }
    

}

#Preview {
    ActionSheets()
}
