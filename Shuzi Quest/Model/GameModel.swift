//
//  GameModel.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-26.
//

import Foundation

struct GameModel{
    var score: Int
    let maxTurns : Int
    var volumn : Float
    var turns : Int // Turns played so far
    var answer: Int
    var alternatives: [Int]
    var gameWon: Bool{
        turns >= maxTurns
        
    }
    var gameOver: Bool{
        score < 0 || gameWon
    }
    
    // Score Code
    mutating func increaseScore(){
        score += 1
    }
    
    // update turn
    mutating func nextTurn(){
        turns += 1
    }
    // next answer and alternative
    //TODO: Need to implement
    mutating func generateNewProblem(){
        // Create an array of four different
        // random values between 0 and 99
        alternatives = Int.generateUniqueRandomIntegers(count: 4)
        // let the last alternative be the answer
        answer = alternatives[3]
        // Shuffle the alternative so that the solution appears in different position
        alternatives = alternatives.shuffled()
    }
    static var defaultGameModel: GameModel{
        .init(
            score: 0,
            maxTurns: 5,
            volumn: 0.7,
            turns: 0,
            answer: 10,
            alternatives: Int.generateUniqueRandomIntegers(count: 4)
        )
    }
}
