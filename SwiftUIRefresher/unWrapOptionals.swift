// if let and guard statements


import SwiftUI

struct unWrapOptionals: View {
    
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserId : String? = "1opi2j3e"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Safe coding practice")
                
                if let text = displayText {
                    Text(text)
                        .font(.headline)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding practices")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "the user id is \(userId)"
                isLoading = false
            })
        } else {
            displayText = "There is no user id"
        }
    }
    
    func loadDataTo() {
        guard let userId = currentUserId else {
            displayText = "There is no user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "the user id is \(userId)"
            isLoading = false
        })
    }
}
#Preview {
    unWrapOptionals()
}
