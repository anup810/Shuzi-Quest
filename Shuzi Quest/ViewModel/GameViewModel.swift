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
    
    func randomIncorrectSounf(){
        playSound(name: ["incorrectAnswer","weak","OhNo"].randomElement() ?? "weak")
    }
    
    func playNumber(num: Int){
        //TODO: PlayNumber
    }
    private func playDigit(num: Int){
        // TODO: PlayDigit
    }
    private func digitToNumber(digit: Int) -> String?{
        return nil // TODO: DigitToName
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
            
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
}
