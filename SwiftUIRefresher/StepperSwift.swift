// Steppers in Swift


import SwiftUI

struct StepperSwift: View {
    
    @State var stepper: Int = 10
    @State var rectangleStepperWidth: CGFloat = 0
    @State var rectangleStepperHeight: CGFloat = 0
    
    var body: some View {
        
        VStack {
            Stepper("Stepper Value : \(stepper)",value: $stepper)
                .padding(50)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 120 + rectangleStepperWidth, height: 100 + rectangleStepperHeight)
                .foregroundStyle(.purple)
            
            Spacer()
            
            Stepper("Stepper 2: ") {
//                 Increment
                stepperWidth(amount: 30)
            } onDecrement: {
//                Decrement
                stepperHeight(amount: 20)
            }
            .padding(.horizontal,50)
           
        }
        .padding()
    }
    
    func stepperWidth(amount: CGFloat) {
        withAnimation(.easeInOut(duration: 0.5)) {
            rectangleStepperWidth += 20
            rectangleStepperHeight += 20
        }
    }
    
    func stepperHeight(amount: CGFloat) {
        withAnimation(.easeInOut(duration: 1)) {
            rectangleStepperWidth -= 20
            rectangleStepperHeight -= 20
        }
    }
}

#Preview {
    StepperSwift()
}
