
import SwiftUI

struct AppStorageView: View {
	@AppStorage("name") var currentUserName: String?
	
	var body: some View {
		VStack(spacing: 20) {
			
//			Text(currentUserName ?? "Nick")
			if let name = currentUserName {
				Text(name)
			}
			Button {
				let name: String = "Nick"
				currentUserName = name
			} label: {
				Text("Save")
					.padding()
					.background(.red)
			}
		}
	}
}

#Preview {
	AppStorageView()
}
