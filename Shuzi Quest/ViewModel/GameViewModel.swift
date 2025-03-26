//
//  GameViewModel.swift
//  Shuzi Quest
//
//  Created by Anup Saud on 2025-03-26.
//

import Foundation
import Observation
import AVFoundation

@Observable

class GameViewModel{
    var gameModel : GameModel = .defaultGameModel
    var audioPlayer: AVAudioPlayer?
    
    func randomExpressionOfJoy(){
        playSound(name: ["awesome","whoop","correct","bell","yes"].randomElement() ?? "whoop")
    }
    
    func randomIncorrectSound(){
        playSound(name: ["incorrectAnswer","weak","OhNo"].randomElement() ?? "weak")
    }
    
    func playNumber(num: Int) {
        switch(num) {
        case 0...10:
            playDigit(digit: num)
        case 11...19:
            playDigit(digit: 10)
            playDigit(digit: num % 10)
        case 20...99:   // 73
            let digit = num % 10
            let tenths = num / 10
            playDigit(digit: tenths)
            playDigit(digit: 10)
            if digit != 0 {
                playDigit(digit: digit)
            }
        default:
            playSound(name: "bell")
        }
    }
    
    private func playDigit(digit: Int) {
        playSound(name: digitToName(digit: digit) ?? "bell")
    }
    private func digitToName( digit: Int) -> String? {
        let digitNames = [
            "zero", "one", "two", "three", "four",
            "five", "six", "seven", "eight", "nine", "ten"
        ]

        if digit >= 0 && digit <= 10 {
            return digitNames[digit]
        } else {
            return nil
        }
    }
    
    
    private func playSound(name: String, ext: String = "aiff"){
        guard let soundURL = Bundle.main.url(forResource: name, withExtension: ext ) else {
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            audioPlayer?.prepareToPlay()
            audioPlayer?.volume = gameModel.volumn
            audioPlayer?.play()
            repeat{
                ()
            }while audioPlayer?.isPlaying == true
            
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
}
