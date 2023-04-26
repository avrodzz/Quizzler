//
//  SoundBrain.swift
//  Quizzler
//
//  Created by Alexis Rodriguez on 4/25/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
import AVFoundation

struct SoundBrain {
    let sounds: [String] = ["Sounds/correct", "Sounds/wrong"]
    var player: AVAudioPlayer!
    var url: URL?
    
    mutating func playSound(_ userGotItRight: Bool) {
        if userGotItRight {
            url = Bundle.main.url(forResource: sounds[0], withExtension: "mp3")
        } else {
            url = Bundle.main.url(forResource: sounds[1], withExtension: "mp3")
        }
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
