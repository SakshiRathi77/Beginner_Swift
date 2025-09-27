//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!


    @IBAction func KeyPressed(_ sender: UIButton) {
        playSound(buttonPressed : sender.currentTitle!)
    }
    func playSound(buttonPressed : String) {
        let url = Bundle.main.url(forResource: buttonPressed, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
}

