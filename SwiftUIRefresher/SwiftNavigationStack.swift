// Navigation Stack in Swift


import SwiftUI

struct SwiftNavigationStack: View {
    let fruits: [String] = [
        "Apple",
        "Banana",
        "Orange",
        "Pineapple"
    ]
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text("Fruit is \(fruit)")
                        }
                    }
                    ForEach(0..<10) { index in
                        NavigationLink(value: index) {
                            Text("Screen no: \(index)")
                        }
                    }
                }
                .padding()
                }
                .navigationTitle(Text("Navigation"))
                .navigationDestination(for: Int.self) { value in
                    Screen2(value: value)
                }
                .navigationDestination(for: String.self) { value in
                    Text("\(value) Screen")
                }
            }
        }
    }


struct Screen2: View {
    let value: Int
    init(value: Int) {
        self.value = value
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

#Preview {
    SwiftNavigationStack()
}
