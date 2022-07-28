//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Devonte Gooden on 5/9/22.
//  hours worked: 3.5

import SwiftUI

struct ContentView: View {
    
    // State variables
    @State var cpuPoints = 0
    @State var playerPoints = 0
    @State private var choices = [
        "rock", "paper", "scissors"
    ]
    @State private var winner = Int.random(in: 0...2)
    @State private var scoreTitle = ""
    @State private var showScore = false
    @State var cpuImage = "scissors"
    @State var playerImage = "rock"
    
    
    // functions
    func showMeRock(_ number: Int) {
        if number == winner {
            scoreTitle = "YOU WON!!"
            playerPoints += 1
        } else {
            scoreTitle = "YOU LOST!!"
            playerPoints -= 1
        }
        showScore = true
    }
    func cpuChoice() {
        choices.shuffle()
        winner = Int.random(in: 0...2)
    }

    var body: some View {
        
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
                
                
                HStack {
                    
                    
                    Text("Score: \(playerPoints)")
                        .font(.system(size: 24))
                        .bold()
                }
                
                
                ForEach(0..<3) { number in
                    Button {
                        showMeRock(number)
                    } label: {
                        Image(choices[number])
                            .resizable()
                            .clipShape(Capsule())
                    }
                }
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(.regularMaterial)
//            .clipShape(RoundedRectangle(cornerRadius: 20))
        
        }
        .alert(scoreTitle, isPresented: $showScore) {
            Button("Continue", action: cpuChoice)
        } message: {
            Text("")
        }
                    
    }
        

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
