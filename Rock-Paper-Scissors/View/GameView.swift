//
//  GameView.swift
//  Rock-Paper-Scissors
//
//  Created by Chujun Xiang on 2025-01-20.
//


import SwiftUI

struct GameView: View {
    @State var selectedChoice = 1
    @State var target = Int.random(in: 1...3)
    @State var feedback = ""
    @State var ChoiceMade: [String] = []
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 40){
                Text("Choose a chioce between Rock,Paper and Scissors")
                    .font(Font.custom("Gill Sans", size: 19))
                Text("Make Your Choice!")
                    .font(.headline)
                
                HStack{
                    Button {
                        Rock()
                    } label: {
                        Text("Rock")
                    }
                    .buttonStyle(.borderedProminent)
                    Button {
                        Scissors()
                    } label: {
                        Text("Scissors")
                    }
                    .buttonStyle(.borderedProminent)
                    Button {
                        Paper()
                    } label: {
                        Text("Paper")
                    }
                    .buttonStyle(.borderedProminent)
                }
                Text(feedback)
                    .font(
                        .custom(
                            "BradleyHandITCTT-Bold",
                            size: 24.0,
                            relativeTo: .title3
                        )
                    )
                HStack{
                    Button {
                    reset()
                } label: {
                    Text("Reset")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                    Button {
                        Allreset()
                } label: {
                    Text("Clear History")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                }
                Text("Choice made")
                    .font(.title3.smallCaps())
                ScrollView {
                    VStack(spacing: 5) {
                        ForEach(ChoiceMade, id: \.self) { currentChoice in
                            Text("\(currentChoice)")
                            Divider()
                        }
                    }
                    }
                Spacer()
            }
            .navigationTitle("Rock Paper Scissors")
        }
    }
    func Rock() {
        if target == 3{
            feedback = "Player won,player: Rock, computer: Scissors"
        } else if target == 2{
            feedback = "Player lost,player: Rock, computer: Paper"
        } else {
            feedback = "Tied,player: Rock, computer: Rock"
        }
        ChoiceMade.append(feedback)
    }
    func Scissors() {
        if target == 2{
            feedback = "Player won,player: Scissors,computer: Paper"
        } else if target == 1{
            feedback = "Player lost,player: Scissors,computer: Rock"
        } else {
            feedback = "Tied,player: Scissors, computer: Scissors"
        }
        ChoiceMade.append(feedback)
    }
    func Paper() {
        if target == 1{
            feedback = "Player won,player: Paper, computer: Rock"
        } else if  target == 3{
            feedback = "Player lost,player: Paper,computer: Scissors"
        } else {
            feedback = "Tied,player: Paper, computer: Paper"
        }
        ChoiceMade.append(feedback)
    }
    func reset() {
        feedback = ""
        target = Int.random(in: 1...3)
    }
    func Allreset() {
        ChoiceMade.removeAll()
    }
}
#Preview {
    GameView()
}

