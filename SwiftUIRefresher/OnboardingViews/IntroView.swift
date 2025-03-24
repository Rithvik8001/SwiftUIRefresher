

import SwiftUI

struct IntroView: View {
	
	@AppStorage("signedIn") var currentUserSignedIn: Bool = false
	
    var body: some View {
        
		ZStack {
			Color.white.opacity(0.27)
				.ignoresSafeArea()
//			Content Layer
//			if the user is signed in  -> Profile View else -> Onboarding View
			
			if currentUserSignedIn {
				ProfileView()
			}
			else {
				OnboardingView()
			}
		}
    }
}

#Preview {
    IntroView()
}
