//
//  ViewController.swift
//  Diceee
//
//  Created by Marc Louvion on 12/02/2019.
//  Copyright © 2019 Virallybot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1Index: Int = 0
    var randomDice2Index: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDiceImage()
    }

    @IBAction func rollButton(_ sender: Any) {
        randomDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDiceImage()
    }
 
    func randomDiceImage () {
        randomDice1Index = Int.random(in: 0 ... 5) + 1
        randomDice2Index = Int.random(in: 0 ... 5) + 1
        
        diceImageView1.image = UIImage(named: "dice\(randomDice1Index)")
        diceImageView2.image = UIImage(named: "dice\(randomDice2Index)")
    }
}

