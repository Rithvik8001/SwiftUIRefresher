// Custom Models in SwiftUI


import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followersCount: Int
}

struct CustomModels: View {
    @State var users: [UserModel] = [
        
        UserModel(displayName: "Rithvik", userName: "Reddy", followersCount: 12),
        UserModel(displayName: "Dileep", userName: "Reddy", followersCount: 23),
        UserModel(displayName: "Pranay", userName: "Reddy", followersCount: 123)
    ]
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35,height: 35)
                            .foregroundStyle(.purple)
                        VStack{
                            Text(user.displayName)
                            Text("@\(user.userName)")
                        }
                        Spacer()
                        
                        VStack {
                            Text("Followers: \(user.followersCount)")
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    CustomModels()
}

//
//HStack(spacing: 15) {
//    Circle()
//        .frame(width: 35,height: 35)
//        .foregroundStyle(.purple)
//    Text(user)
//}
