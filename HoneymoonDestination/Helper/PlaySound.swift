//
//  PlaySound.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 08.08.2023.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Could not fina and play the sound file.")
        }
    }
}
