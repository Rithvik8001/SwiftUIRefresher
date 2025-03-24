//
//  ProfileView.swift
//  SwiftUIRefresher
//
//  Created by Rithvik Pallamreddy on 3/24/25.
//

import SwiftUI

struct ProfileView: View {
	
	@AppStorage("name") var currentUserName: String?
	@AppStorage("age") var currentUserAge: Int?
	@AppStorage("gender") var currentUserGender: String?
	@AppStorage("signedIn") var currentUserSignedIn: Bool = false
	
    var body: some View {
		VStack(spacing: 20) {
			Image(systemName: "person.circle.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 150,height: 150)
			
			Text(currentUserName ?? "your name here")
			Text("This user is \(currentUserAge ?? 0) years old")
			Text("Their gender is \(currentUserGender ?? "unknown")")
			
			Text("Sign out")
				.foregroundStyle(.white)
				.font(.headline)
				.frame(height: 55)
				.frame(maxWidth: .infinity)
				.background(Color.black)
				.cornerRadius(12)
				.onTapGesture {
					signOut()
				}
		}
		.font(.system(size: 25,weight: .bold))
		.padding()
		.padding(.vertical,40)
		.background(Color.orange)
		.cornerRadius(10)
		.shadow(radius: 8)
		.foregroundStyle(.white)
		.padding()
		 
    }
	
	
	func signOut() {
		currentUserName = nil
		currentUserAge = nil
		currentUserGender = nil
		currentUserSignedIn = false
	}
}

#Preview {
    ProfileView()
}
