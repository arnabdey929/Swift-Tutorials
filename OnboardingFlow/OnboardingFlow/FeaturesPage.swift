//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Arnab Dey on 07/09/25.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("The page of Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding()
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Garmi ki Chuttiya")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
