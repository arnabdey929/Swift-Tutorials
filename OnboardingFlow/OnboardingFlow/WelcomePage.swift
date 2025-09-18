//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by Arnab Dey on 07/09/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)
            
            Text("Tassles of the Day")
                .font(.title2)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
