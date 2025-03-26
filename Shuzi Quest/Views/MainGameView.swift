//
//  ContentView.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-25.
//

import SwiftUI

struct MainGameView: View {
    @Environment(GameViewModel.self) var gameViewModel
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Joy") {
                gameViewModel.randomExpressionOfJoy()
            }
            .padding()
            Button("Incorrect Answer") {
                gameViewModel.randomIncorrectSound()
            }
            Button("7") {
                gameViewModel.playNumber(num: 2)
            }.padding()
            
            Button("26") {
                gameViewModel.playNumber(num: 99)
            }
        }
        .padding()
    }
}

#Preview {
    MainGameView()
        .environment(GameViewModel())
}
