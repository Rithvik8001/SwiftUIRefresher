//@EnvironmentObject in Swift


import SwiftUI

class EnvironmentViewModel: ObservableObject {
	@Published var dataArray: [String] = []
	@Published var selectedItem: String?
	
	init() {
		getData()
	}
	
	func getData() {
		self.dataArray
			.append(
				contentsOf: [
					"Iphone 16 pro",
					"Iphone 16 pro Max",
					"Iphone 16e",
					"Iphone 16"
				]
			)
	}
}

struct EnvironmentObjectSwift: View {
	
	@StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
	
	var body: some View {
		VStack {
			NavigationStack {
				List {
					ForEach(viewModel.dataArray ,id: \.self) { item in
						NavigationLink {
							DetailView(selectedItem: item)
						} label: {
							Text(item)
								.font(.system(size: 18,weight: .semibold))
						}
					}
				}
				.navigationTitle("Iphone 16 Series")
			}
			.environmentObject(viewModel)
		}
	}
}

struct DetailView: View {
	
	let selectedItem: String
	//	Swift uses implicit init so not initialzing an init here.
	var body: some View {
		ZStack {
			Color.cyan
				.ignoresSafeArea()
			
			//	Content layer
			NavigationLink {
				ThirdScreen(selectedString: selectedItem)
			} label: {
				Text(selectedItem)
					.font(.system(size: 20,weight: .semibold))
					.padding(.vertical,12)
					.padding(.horizontal,24)
					.foregroundStyle(.white)
					.background(.black)
					.cornerRadius(16)
			}
			
		}
	}
}

struct ThirdScreen: View {
	
	@EnvironmentObject var viewModel: EnvironmentViewModel
	let selectedString: String
	var body: some View {
		//		Background Layer
		ZStack {
			Color.purple
				.ignoresSafeArea()
			
			//	Content Layer
			ScrollView {
				VStack(spacing: 20) {
					Text("Purchased \(selectedString)")
				}
				.foregroundStyle(.white)
				.font(.system(size: 25,weight: .medium))
			}
			
		}
	}
}
#Preview {
	EnvironmentObjectSwift()
}
