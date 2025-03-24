//
//  ExtractingSubViews.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/16/25.
//

//import SwiftUI
//
//struct ExtractingSubViews: View {
//	
//	@State var showToggle: Bool = false
//    var body: some View {
//        ZStack {
//            Color(.black)
//                .ignoresSafeArea()
//            
//            contentLayer
//        }
//    }
//    
//    var contentLayer: some View {
//        HStack {
//			ExtractedView(showToggle: $showToggle, title: "Apples", count: 25, color: .red)
//            ExtractedView(title: "Oranges", count: 12, color: .orange)
//            ExtractedView(title: "Grapes", count: 122, color: .green)
//        }
//    }
//}
//
//#Preview {
//    ExtractingSubViews()
//}
//
//struct ExtractedView: View {
//	
//	@Binding var showToggle: Bool
//    let title: String
//    let count: Int
//    let color: Color
//    
//    var body: some View {
//        VStack {
//            Text("\(count)")
//            Text("\(title)")
//        }
//        .padding()
//        .background(color)
//        .cornerRadius(8)
//        .foregroundStyle(.black)
//        .bold()
//    }
//}
