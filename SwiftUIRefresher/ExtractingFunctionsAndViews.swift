

import SwiftUI

struct ExtractingFunctionsAndViews: View {
	
	@State var bgcColor: Color = .purple
	@State var title: String = "The Background Color is"
	
	var body: some View {
		ZStack {
			bgcColor
				.ignoresSafeArea(.all)
			
			//  Content
			contentLayer
		}
		.foregroundStyle(.white)
		
	}
	
	var contentLayer: some View {
		VStack {
			Text("\(title) : \(bgcColor)")
				.font(.title)
				.bold()
			
			Button {
				buttonPressed()
			} label: {
				Text("My Button")
					.font(.headline)
					.padding(.vertical,10)
					.padding(.horizontal,17)
					.background(.black)
					.cornerRadius(5)
					.bold()
			}
			
		}
		
	}
	
	func buttonPressed() {
		bgcColor = .cyan
	}
}

#Preview {
	ExtractingFunctionsAndViews()
}
