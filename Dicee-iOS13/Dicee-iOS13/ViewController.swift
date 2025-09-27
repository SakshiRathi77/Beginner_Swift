//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Iboutlets are used when there should be change from code to ui

    @IBOutlet var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    //ibaction are used when change is ui should change in code.
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        let ListOfImages: [String] = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]


        diceImageView1.image = UIImage(named : ListOfImages.randomElement()!)
        
        
        diceImageView2.image = UIImage(named : ListOfImages.randomElement()!)
    
    }
}

