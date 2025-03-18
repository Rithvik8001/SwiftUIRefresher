// Lists in SwiftUI

import SwiftUI

struct ListsInSwift: View {
    
    @State var dataArray: [String] = [
        "Banana",
        "Apple",
        "Strawberry",
        "Pineapple",
        "Orange",
        "Mango"
    ]
    @State var veggies: [String] = [
        "Tomato","Onion","Carrot","Brinjal"
    ]
    var body: some View {
        
        NavigationStack {
            
            VStack {
                List {
                    Section(
                        header:
                            HStack {
                                Text("Fruits")
                                Image(systemName: "flame.fill")
                            }
                            .font(.headline)
                            .foregroundStyle(.orange)
                            
                            
                    ) {
                            ForEach(dataArray,id: \.self) { fruit in
                                HStack {
                                    Image(systemName: "checkmark.circle")
                                    Spacer()
                                    Text(fruit.capitalized)
                                        .frame(maxWidth:.infinity,alignment: .center)
                                    Image(systemName: "trash")
                                        .foregroundStyle(.red)
                                }
                            }
                            .onDelete(perform: deleteListItems)
                        }
                    Section(
                        header:Text("Veggies")) {
                            ForEach(veggies,id: \.self) { veggie in
                                HStack {
                                    Image(systemName: "checkmark.circle")
                                    Spacer()
                                    Text(veggie.capitalized)
                                        .frame(maxWidth:.infinity,alignment: .center)
                                    Image(systemName: "trash")
                                        .foregroundStyle(.red)
                                }
                            }
                        }
                }
                .listStyle(SidebarListStyle())
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton)
        }
        .tint(.red)
    }
    
    func deleteListItems(indexSet: IndexSet) {
        dataArray.remove(atOffsets: indexSet)
    }
    func addItems() {
        dataArray.append("Coconut")
    }
    
    var addButton: some View {
        Button {
            addItems()
        } label: {
            Text("Add")
        }
    }

}


#Preview {
    ListsInSwift()
}
