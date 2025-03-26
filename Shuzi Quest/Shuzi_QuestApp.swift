//
//  Shuzi_QuestApp.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

@main
struct Shuzi_QuestApp: App {
    @State private var gameViewModel: GameViewModel = GameViewModel()
    var body: some Scene {
        WindowGroup {
            MainGameView()
                .environment(gameViewModel)
        }
    }
}
