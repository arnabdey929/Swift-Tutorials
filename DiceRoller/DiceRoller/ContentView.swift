//
//  ContentView.swift
//  DiceRoller
//
//  Created by Arnab Dey on 07/09/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    @State private var diceList: [DiceView] = [DiceView()]
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                ForEach(diceList) { list in
                    <#body#>
                }
            }
            
            Button("Roll") {
                withAnimation {
                    self.diceList[0].rollDice()
                }
            }
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
