// Alerts in swift

import SwiftUI

struct alertsInSwift: View {
    @State var showAlert: Bool = false
    @State var alertTitle: String = "This is an alert!"
    @State var alertMessage: String = "This is an alert message!"
    @State var bgcColor: Color = .purple
    @State var btnTitle: String = "Marvel"
    
    
    var body: some View {
        ZStack {
            bgcColor
                .ignoresSafeArea()
            Button {
                showAlert.toggle()
            } label: {
                Text(btnTitle)
                    .font(.system(size: 25,weight: .bold))
                    .padding(.vertical,12)
                    .padding(.horizontal,32)
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(7)
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        return  Alert(title: Text(alertTitle), message: Text(alertMessage), primaryButton: .default(Text("Ok"),action: {
            btnTitle = "As you pressed ok, your fav character is IronMan"
        }), secondaryButton: .destructive(Text("Cancel"),action: {
            btnTitle = "As you pressed Cancel, your fav character is Hulk"
        }))
    }
}

#Preview {
    alertsInSwift()
}
