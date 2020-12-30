//
//  ViewController.swift
//  Dice
//
//  Created by Joey on 11/14/17.
//  Copyright © 2017 Joey. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    /*
    var randomDiceIndex3: Int = 0
    var randomDiceIndex4: Int = 0
    var randomDiceIndex5: Int = 0
    var randomDiceIndex6: Int = 0
    */
 
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceimageView1: UIImageView!
    @IBOutlet weak var diceimageView2: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()//samething as form load in visual basic
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton)
    {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        updateDiceImages()
    }
    
    func updateDiceImages()
    {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        /*
         randomDiceIndex3 = Int(arc4random_uniform(6))
         randomDiceIndex4 = Int(arc4random_uniform(6))
         randomDiceIndex5 = Int(arc4random_uniform(6))
         randomDiceIndex6 = Int(arc4random_uniform(6))
         */
        
        //print(randomDiceIndex1)
        
        diceimageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        //diceimageView1.image = UIImage(named: diceArray[randomDiceIndex2])
        //diceimageView1.image = UIImage(named: diceArray[randomDiceIndex3])
        
        diceimageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        //diceimageView2.image = UIImage(named: diceArray[randomDiceIndex5])
        //diceimageView2.image = UIImage(named: diceArray[randomDiceIndex6])
    }
}

