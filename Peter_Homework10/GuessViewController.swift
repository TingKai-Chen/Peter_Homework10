//
//  GuessViewController.swift
//  Peter_Homework10
//
//  Created by 陳庭楷 on 2018/11/20.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

import GameplayKit

class GuessViewController: UIViewController {
    
    var randomNumber = ""
    
    @IBOutlet weak var turnImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var upButton: UIButton!
    
    @IBOutlet weak var downButton: UIButton!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    var array = [ "up" , "down" , "left" , "right" ]
    
    @IBAction func pressed(_ sender: UIButton) {
        
        switch sender {
            
        case self.upButton :
            
            guessRandom(array[0])
            
        case self.downButton :
            
            guessRandom(array[1])
            
        case self.leftButton :
            
            guessRandom(array[2])
            
        case self.rightButton :
            
            guessRandom(array[3])
            
        default :
            
            break

        }
        
        enable(false)
        
        self.resultLabel.isHidden = false
        
    }
    
    func guessRandom ( _ guess: String ) {
        
        let random = GKRandomDistribution(lowestValue: 0, highestValue: self.array.count-1)
        
        let number = random.nextInt()
        
        self.randomNumber = self.array[number]
        
        self.turnImageView.image = UIImage(named:"\(self.randomNumber)")
        
        if "\(self.randomNumber)" == guess {
            
            self.resultLabel.text = "恭喜你贏了"
            
        }
            
        else {
            
            self.resultLabel.text = "哈哈 猜錯囉"
            
        }
        
    }
    
    func enable ( _ ena: Bool ) {
        
        self.upButton.isEnabled = ena
        
        self.downButton.isEnabled = ena
        
        self.leftButton.isEnabled = ena
        
        self.rightButton.isEnabled = ena
    }
    
    override func viewDidLoad() {
        
        self.resultLabel.isHidden = true
        
        super.viewDidLoad()

    }

}
