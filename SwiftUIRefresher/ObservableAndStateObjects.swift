// Observable and State Objects in SwiftUI

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel {
    @Published var fruitArray: [FruitModel] = []
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Banana", count: 2)
        let fruit2 = FruitModel(name: "Watermelon", count: 3)
        let fruit3 = FruitModel(name: "Strawberry", count: 4)
        fruitArray.append(fruit1)
        fruitArray.append(fruit2)
        fruitArray.append(fruit3)
    }
    
    func deleteFruit(indexSet: IndexSet) {
        fruitArray.remove(atOffsets: indexSet)
    }
}
struct ObservableAndStateObjects: View {
    
//    @State var fruitItems: [FruitModel] = []
    var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    HStack {
                        Text("\(fruit.count)")
                            .foregroundStyle(.red)
                            .bold()
                        Text("\(fruit.name)")
                    }
                }
                .onDelete { IndexSet in
                    fruitViewModel.deleteFruit(indexSet: IndexSet)
                }
            }
            .navigationTitle("Fruits")
            .onAppear {
                fruitViewModel.getFruits()
            }
        }
    }
}

#Preview {
    ObservableAndStateObjects()
}
