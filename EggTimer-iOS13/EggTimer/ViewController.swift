//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    let eggTimes: [String: Int] = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsTime: Int = 0
    var timer = Timer()
    
    @IBOutlet var titleLabel: UILabel!
    
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        secondsTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    @objc func updateTimer() {
        if secondsTime > 0 {
            secondsTime -= 1
        }
        else{
            timer.invalidate()
            titleLabel.text = "Done!"
        }
    }
}
