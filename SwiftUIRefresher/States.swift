

import SwiftUI

struct States: View {
    
    @State var bgcColor: Color = Color.green
    @State var myTitle: String = "Counter App"
    @State var count: Int = 0
    @State var fontSize: CGFloat = 18
    
    var body: some View {
        ZStack {
//            background layer
            
            bgcColor
                .ignoresSafeArea(.all)
            
//            content layer
            VStack {
                Text("States in SwiftUI")
                    .padding()
                    .frame(maxWidth: .infinity,alignment: .topLeading)
                    .font(.system(size: 33,weight: .heavy))
                
                Spacer()
                
                VStack(spacing: 20) {
                    Text(myTitle)
                        .font(.title)
                    Text("Count is \(count)")
                        .font(.system(size: fontSize))
                        .underline()
                    
                    HStack(spacing: 20) {
                        Button {
                            self.bgcColor = .accentColor
                            myTitle = "Count Added"
                            count += 1
                            fontSize = 42
                        } label: {
                            Text("Add Button")
                        }
                        
                        Button {
                            self.bgcColor = .purple
                            myTitle = "Count Subtracted"
                            count -= 1
                            fontSize = 24
                        } label: {
                            Text("Sub Button")
                        }

                    }
                }
                Spacer()
            }
            .foregroundStyle(.white)
            
        }
    }
}

#Preview {
    States()
}
