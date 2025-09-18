//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Arnab Dey on 06/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DayForeCast(day: "Sunday", isRainy: true, high: 30, low: 24)
                DayForeCast(day: "Monday", isRainy: false, high: 32, low: 26)
                DayForeCast(day: "Sunday", isRainy: true, high: 30, low: 24)
                DayForeCast(day: "Monday", isRainy: false, high: 32, low: 26)
                DayForeCast(day: "Sunday", isRainy: true, high: 30, low: 24)
                DayForeCast(day: "Monday", isRainy: false, high: 32, low: 26)
                DayForeCast(day: "Sunday", isRainy: true, high: 30, low: 24)
                DayForeCast(day: "Monday", isRainy: false, high: 32, low: 26)
                DayForeCast(day: "Sunday", isRainy: true, high: 30, low: 24)
                DayForeCast(day: "Monday", isRainy: false, high: 32, low: 26)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayForeCast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColour: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.title)
            Image(systemName: iconName)
                .foregroundStyle(iconColour)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
