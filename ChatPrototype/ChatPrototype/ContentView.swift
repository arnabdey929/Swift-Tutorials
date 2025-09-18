//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Arnab Dey on 05/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            
            Text("Namaskar")
                .padding()
                .background(Color.red, in: RoundedRectangle(cornerRadius: 8))
            Text("Ki Barta")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 10))
                .shadow(color: Color.green, radius: 5)
        }
        .padding()
        .background(Color.yellow, in: RoundedRectangle(cornerRadius: 3))
        HStack(spacing: 20) {
            VStack(spacing: 5) {
                Text("Text 1")
                    .padding()
                    .background(Color.pink, in: RoundedRectangle(cornerRadius: 3))
            }
            VStack(spacing: 5) {
                Text("Text 2")
                    .padding()
                    .background(Color.cyan, in: RoundedRectangle(cornerRadius: 3))
            }
            VStack(spacing: 5) {
                Text("Text 3")
                    .padding()
                    .background(Color.green, in: RoundedRectangle(cornerRadius: 3))
                    .foregroundColor(Color.black)
            }
        }
        .padding()
        .background(Color.indigo, in: RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    ContentView()
}
