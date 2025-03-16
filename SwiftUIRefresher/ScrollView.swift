import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<25) { index in
                                RoundedRectangle(cornerRadius: 15)
                                    .foregroundStyle(.white)
                                    .shadow(radius: 3)
                                    .padding()
                                    .frame(width: 250, height: 150)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
