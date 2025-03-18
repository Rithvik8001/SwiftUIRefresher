//Sheets in SwiftUI

// sheet is a transistion from one screen to another ( popup )

import SwiftUI

struct Sheets: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color.purple
                .ignoresSafeArea()
            
            VStack {
                Button {
                    showSheet.toggle()
                } label: {
                    Text("Button")
                        .foregroundStyle(.white)
                        .padding(.vertical,14)
                        .padding(.horizontal,28)
                        .background(.black)
                        .bold()
                        .cornerRadius(11)
                }
            }
            
            .sheet(isPresented: $showSheet, content: {
                secondScreen()
            })
                    
                    
        }
    }
}

struct secondScreen: View {
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.black)
                        .font(.headline)
                        .padding(20)
                }
            }
        }
    }
}
#Preview {
    Sheets()
}
