// Tab view in swiftui

import SwiftUI

struct TabViewSwift: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                HomeTabView(selectedTab: $selectedTab)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                Text("Browse Screen")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Browsw")
                    }
                    .tag(1)
                
                Text("Browse Screen")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag(2)
                
                Text("Discounts")
                    .tabItem {
                        Image(systemName: "flame.fill")
                        Text("Discounts")
                    }
                    .tag(3)
            }
            .tint(Color.black)
        }
    }
}

#Preview {
    TabViewSwift()
}

struct HomeTabView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.purple
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Text("This is Home Screen")
                    .foregroundStyle(.white)
                    .font(.system(size: 25,weight: .bold))
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile screen")
                        .padding(.vertical,12)
                        .padding(.horizontal,24)
                        .bold()
                        .font(.system(size: 18))
                        .background(.black)
                        .foregroundStyle(.white)
                        .cornerRadius(5)
                }
                Button {
                        selectedTab = 3
                } label: {
                    Text("Go to discounts screen")
                        .padding(.vertical,12)
                        .padding(.horizontal,24)
                        .bold()
                        .font(.system(size: 18))
                        .background(.black)
                        .foregroundStyle(.white)
                        .cornerRadius(5)
                    }
                }
            }
        }
    }
