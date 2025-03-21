// Observable and State Objects in SwiftUI

import SwiftUI

// Model - data/Models required for the view
struct FruitModel: Identifiable {
	let id: String = UUID().uuidString
	let name: String
	let count: Int
}

// View Model - data logic
class FruitViewModel: ObservableObject {
	
	//	@Published - a @State for a class basically.
	@Published var fruits: [FruitModel] = []
	@Published var isLoading: Bool = false
	
	init() {
		getFruits()
	}
	
	func getFruits() {
		let fruit1 = FruitModel(name: "Orange", count: 2)
		let fruit2 = FruitModel(name: "Banana", count: 3)
		let fruit3 = FruitModel(name: "Pineapple", count: 4)
		
		isLoading = true
		DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
			self.fruits.append(fruit1)
			self.fruits.append(fruit2)
			self.fruits.append(fruit3)
			self.isLoading = false
		}
	}
	
	func deleteFruits(indexSet: IndexSet) {
		fruits.remove(atOffsets: indexSet)
	}
}

// should only show the UI. - View
struct ObservableAndStateObjects: View {
	
	//	@State var fruits: [FruitModel] = [] - is not needed as we wrote @Published in the class
	//	@StateObject - use this on creation or init. ( doesnt delete the value even if the screen refreshes )
	//	@ObservedObject - use this for Subviews ( because it does delelte the values on the screen refresh. )
	
	@StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
	
	var body: some View {
		NavigationStack {
			List {
				if fruitViewModel.isLoading {
					ProgressView()
				}
				else {
					ForEach(fruitViewModel.fruits) { fruit in
						HStack {
							Text("\(fruit.count)")
								.foregroundStyle(.red)
							Text(fruit.name)
								.font(.headline)
								.bold()
						}
					}
					.onDelete { IndexSet in
						fruitViewModel.deleteFruits(indexSet: IndexSet)
					}
					
				}
			}
			.navigationTitle("Fruits")
			.listStyle(InsetGroupedListStyle())
			.navigationBarItems(
				trailing:
					NavigationLink(destination: {
						SubViewScreen(fruitViewModel: fruitViewModel)
					}, label: {
						Image(systemName: "arrow.right")
							.font(.title)
					})
			)
		}
	}
}

struct SubViewScreen: View {
	
	@Environment(\.presentationMode) var presentationMode
	@ObservedObject var fruitViewModel: FruitViewModel
	
	var body: some View {
		ZStack {
			Color.purple
				.ignoresSafeArea()
			
			//			Content Layer
			VStack {
				List {
					ForEach(fruitViewModel.fruits) { fruit in
						HStack {
							Text("\(fruit.count)")
							Text("\(fruit.name)")
						}
					}
					.foregroundStyle(.black)
				}
			}
		}
	}
}

#Preview {
	ObservableAndStateObjects()
}
