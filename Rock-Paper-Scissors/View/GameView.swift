//
//  GameView.swift
//  Rock-Paper-Scissors
//
//  Created by Chujun Xiang on 2025-01-20.
//


import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 30) {
                Text("Choose a chioce between Rock,Paper and Scissors")
            }
            .navigationTitle("Rock Paper Scissors")
        }
        
    }
}

#Preview {
    GameView()
}
