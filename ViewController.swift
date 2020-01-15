//
//  ViewController.swift
//  great app
//
//  Created by Ekjot Multani on 2020-01-13.
//  Copyright © 2020 Ekjot Multani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    var leftScore = 0
           
    var rightScore = 0

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        
        if leftNumber > rightNumber { // player 1 win
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            print("left")
            
        } else if leftNumber < rightNumber { // player 2 win
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            print("right")
            
        } else if leftNumber == rightNumber{ // if tie both players win
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else { // else I have no idea
            print("How did this happen")
        }
        
    }
    
}

