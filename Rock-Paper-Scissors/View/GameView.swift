//
//  GameView.swift
//  Rock-Paper-Scissors
//
//  Created by Chujun Xiang on 2025-01-20.
//


import SwiftUI

struct GameView: View {
    @State var target = Int.random(in: 1...3)
    @State var feedback = ""
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 30){
                Text("Choose a chioce between Rock,Paper and Scissors")
                
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
                Button {
                    reset()
                } label: {
                    Text("Reset")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                Spacer()
            }
            .navigationTitle("Rock Paper Scissors")
        }
    }
    func Rock() {
        if target == 3{
            feedback = "You won, I chose Scissors"
        } else if target == 2{
            feedback = "You lost, I chose Paper"
        } else {
            feedback = "Tied, I chose Rock"
        }
    }
    func Scissors() {
        if target == 2{
            feedback = "You won,I chose Paper"
        } else if target == 1{
            feedback = "You lost, I chose Rock"
        } else {
            feedback = "Tied, I chose Scissors"
        }
    }
    func Paper() {
        if target == 1{
            feedback = "You won, I chose Rock"
        } else if  target == 3{
            feedback = "You lost, I chose Scissors"
        } else {
            feedback = "Tied, I chose Paper"
        }
    }
    func reset() {
        feedback = ""
        target = Int.random(in: 1...3)
    }
}
#Preview {
    GameView()
}

