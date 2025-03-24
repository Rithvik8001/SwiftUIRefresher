
import SwiftUI

struct OnboardingView: View {
	
	/* Onboarding States
	 0 - welcome screen
	 1 - Add name
	 2 - Add age
	 3 - Add gender
	 */
	
	@State var onboardingState: Int = 0
	@State var nameInputText: String = ""
	@State var age: Double = 20
	@State var genderSelection: String = ""
	
	@AppStorage("name") var currentUserName: String?
	@AppStorage("age") var currentUserAge: Int?
	@AppStorage("gender") var currentUserGender: String?
	@AppStorage("signedIn") var currentUserSignedIn: Bool = false
	
	var body: some View {
		
		ZStack {
			
			//		content
			ZStack {
				switch onboardingState {
				case 0:
					welcomeSection
				case 1:
					addNameSection
				case 2:
					addAgeSection
				case 3:
					genderSection
				default:
					RoundedRectangle(cornerRadius: 25.0)
						.foregroundStyle(.orange)
				}
			}
			//		Buttons
			VStack {
				Spacer()
				bottomButton
			}
			.padding()
		}
	}
}

#Preview {
	OnboardingView()
	
}

// MARK: Components
extension OnboardingView {
	private var bottomButton: some View {
		Text(onboardingState == 0 ? "Sign Up" : onboardingState > 2 ? "Finish" : "Next")
			.frame(maxWidth: .infinity)
			.frame(height: 55)
			.background(.black)
			.foregroundStyle(.white)
			.font(.system(size: 22,weight: .bold))
			.cornerRadius(16)
			.onTapGesture {
				handleNextBtnPressed()
			}
	}
	
	private var welcomeSection: some View {
		VStack(spacing: 40) {
			Spacer()
			Image(systemName: "heart.text.square.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 150,height: 150)
				.foregroundStyle(.red)
			Text("Find your match.")
				.font(.system(size: 35,weight: .heavy))
				.foregroundStyle(.cyan)
				.overlay(
					Capsule(style: .continuous)
						.frame(height: 3)
						.offset(y:4)
					, alignment: .bottom
				)
			Text("This is the number #1 app for finding your match online. In this tutorial we are practinsing using app storage.")
				.font(.system(size: 20,weight: .medium))
				.multilineTextAlignment(.center)
			Spacer()
			Spacer()
		}
		.padding(30)
	}
	
	private var addNameSection: some View {
		VStack(spacing: 20) {
			Spacer()
			Text("What's your name?")
				.font(.system(size: 35,weight: .heavy))
				.foregroundStyle(.cyan)
			TextField("Type your name here..", text: $nameInputText)
				.font(.headline)
				.frame(height: 60)
				.background(.gray.opacity(0.15))
				.cornerRadius(12)
			Spacer()
			Spacer()
		}
		.multilineTextAlignment(.center)
		.padding(30)
	}
	
	private var addAgeSection: some View {
		VStack(spacing: 20) {
			Spacer()
			Text("What's your age?")
				.font(.system(size: 35,weight: .heavy))
				.foregroundStyle(.cyan)
			Text("\(String(format: "%.0f",age))")
				.foregroundStyle(.red)
				.font(.system(size: 26,weight: .bold))
			Slider(value: $age, in: 18...100,step: 1)
				.accentColor(.black)
			Spacer()
			Spacer()
		}
		.multilineTextAlignment(.center)
		.padding(30)
	}
	
	private var genderSection: some View {
		VStack(spacing: 20) {
			Spacer()
			Text("What's your gender?")
				.font(.system(size: 32,weight: .heavy))
				.foregroundStyle(.cyan)
			Picker(selection: $genderSelection) {
				Text("Male").tag("Male")
				Text("female").tag("Female")
			} label: {
				Text("\(genderSelection)")
			}
			.pickerStyle(MenuPickerStyle())
			
			Spacer()
			Spacer()
		}
		.multilineTextAlignment(.center)
		.padding(30)
	}
}

// MARK: Functions
extension OnboardingView {
	
	func handleNextBtnPressed() {
		
//		Check Inputs
		switch onboardingState {
		case 1:
			guard nameInputText.count >= 3 else {
				return
			}
		default:
			break
		}
//		Go to next section
		if onboardingState >= 3 {
			signIn()
		}
		withAnimation(.spring()) {
			onboardingState += 1
		}
	}
	func signIn() {
		currentUserName = nameInputText
		currentUserAge = Int(age)
		currentUserGender = genderSelection
		withAnimation(.spring()) {
			currentUserSignedIn = true
		}
		
	}
}
