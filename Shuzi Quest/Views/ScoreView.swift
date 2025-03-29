//
//  ScoreView.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-28.
//

import SwiftUI

struct ScoreView: View {
    let score: Int
    let maxScore: Int
    var body: some View {
        Text("Score: \(score) out of \(maxScore)")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

#Preview {
    ScoreView(score: 2, maxScore: 5)
}
