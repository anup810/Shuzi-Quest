//
//  ContentView.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct MainGameView: View {
    @Environment(GameViewModel.self) var gameViewModel
    @State private var showSettingsView: Bool = false
    @State private var showPinyin : Bool = false
    var body: some View {
        ZStack {
            GearIconView(showSettingsView: $showSettingsView)
            VStack {
                ScoreView(score: gameViewModel.gameModel.score, maxScore: gameViewModel.gameModel.maxTurns)
                
                Toggle(showPinyin ? "Hide Pinyin" : " Show Pinyin", isOn: $showPinyin.animation())
                    .padding(.vertical)
                Spacer()

            }
            .padding()
        }
    }
}

#Preview {
    MainGameView()
        .environment(GameViewModel())
}
