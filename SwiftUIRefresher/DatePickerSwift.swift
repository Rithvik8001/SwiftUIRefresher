// Date Picker in swift

import SwiftUI

struct DatePickerSwift: View {
    
    @State var selectedDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        
        VStack {
            DatePicker("Select a Date", selection: $selectedDate,displayedComponents: [.date])
                .tint(Color.purple)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            
            Spacer()
            
            Text("Date selected is \(dateFormatter.string(from: selectedDate))")
                .frame(maxWidth: 290)
                .padding(.horizontal,30)
                .padding(.vertical,15)
                .background(.black)
                .cornerRadius(18)
                .foregroundStyle(.white)
                .bold()
                .multilineTextAlignment(.center)
                .lineSpacing(12)
                .ignoresSafeArea()
            
            Spacer()
            
        }
        
    }
}

#Preview {
    DatePickerSwift()
}
