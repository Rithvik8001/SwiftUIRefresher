// Markups and documentation

import SwiftUI

struct Documentation: View {
    
//    ( easily viewable in minimap )
//     MARK: Properties
    
    @State var data: [String] = [
        "Apples","Oranges","Pineapples"
    ]
    @State var alert: Bool = false
    
//    MARK: Body
//   Rithvik -  Working copy - things to do ( This is called code folding - keep title outside the folding area ( just a better practice )
        /*
            
            1) Fix title
            2) 
         */
    var body: some View {
        NavigationStack { // Start Nav
            ZStack {
//                background
                Color.purple
                    .ignoresSafeArea()
//                foreground
                ScrollView { // Start ScrollView
                    Text("Hello")
                    ForEach(data,id: \.self) { fruit in
                        Text("\(fruit.capitalized)")
                    }
                }
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button(action: {
                    alert.toggle()
                }, label: {
                    Text("My Button")
                })
                )
                .alert(isPresented: $alert) {
                    getAlert(titleMessage: "Hey")
                }
            } // End ScrollView
        } // End Nav
    }
    
//    MARK: Functions
    
//    if you cant get a default summary documentation on hover from swiftui - use /// and explain
    /// This is a get alert function
    ///
    ///(This is called Discussion)
    /// This functions create and returns an Alert immediatly, it needs a parameter called titleMessage
    ///
    ///
    ///
    ///
    /// - Parameter titleMessage: needs a string to pass as the titleMessage
    /// - Returns: an alert
    func getAlert(titleMessage: String) -> Alert {
        return Alert(title: Text("\(titleMessage)"))
    }
}
// MARK: Preview

#Preview {
    Documentation()
}
