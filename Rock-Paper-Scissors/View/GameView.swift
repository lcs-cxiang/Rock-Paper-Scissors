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
            VStack(spacing: 30) {
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
                    
                    Text(feedback)
                        .font(
                            .custom(
                                "BradleyHandITCTT-Bold",
                                size: 24.0,
                                relativeTo: .title3
                            )
                        )
                    Button {
                        Scissors()
                    } label: {
                        Text("Scissors")
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Text(feedback)
                        .font(
                            .custom(
                                "BradleyHandITCTT-Bold",
                                size: 24.0,
                                relativeTo: .title3
                            )
                        )
                    Button {
                        Paper()
                    } label: {
                        Text("Paper")
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Text(feedback)
                        .font(
                            .custom(
                                "BradleyHandITCTT-Bold",
                                size: 24.0,
                                relativeTo: .title3
                            )
                        )
                }
            }
        }
        
        
        .navigationTitle("Rock Paper Scissors")
    }
    func Rock() {
        if target == 3{
            feedback = "You won!"
        } else if target == 2{
            feedback = "You lost!"
        } else {
            feedback = "Tied!"
        }
    }
    func Scissors() {
        if target == 2{
            feedback = "You won!"
        } else if target == 1{
            feedback = "You lost!"
        } else {
            feedback = "Tied!"
        }
    }
    func Paper() {
        if target == 1{
            feedback = "You won!"
        } else if  target == 3{
            feedback = "You lost!"
        } else {
            feedback = "Tied!"
        }
    }
    func reset() {
        
    }
}
#Preview {
    GameView()
}

