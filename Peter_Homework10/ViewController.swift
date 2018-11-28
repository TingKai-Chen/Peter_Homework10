//
//  ViewController.swift
//  Peter_Homework10
//
//  Created by 陳庭楷 on 2018/11/20.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

import GameplayKit

class ViewController: UIViewController {
    
    var array = [ "rock" , "paper" , "scissors" ]
    
    var guessNumber : String = ""
    
    @IBOutlet weak var randomImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var blaWhiGuessButton: UIButton!
    
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var scissorsButton: UIButton!
    
 
    @IBAction func pressed(_ sender: UIButton) {
        
        isHiddEnab(false)
        
        guessRandom()
        
        switch sender {
            
        case self.paperButton :
            
            if self.guessNumber == self.array[0]  {
                
                self.resultLabel.text = "你贏了"
                
                self.blaWhiGuessButton.isEnabled = true
                
            }
                
            else if self.guessNumber == self.array[1] {
                
                self.resultLabel.text = "平手再來"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
                
            else {
                
                self.resultLabel.text = "你輸了"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
            
        case self.rockButton :
            
            if self.guessNumber == self.array[2]  {
                
                self.resultLabel.text = "你贏了"
                
                self.blaWhiGuessButton.isEnabled = true
                
            }
                
            else if self.guessNumber == self.array[0] {
                
                self.resultLabel.text = "平手再來"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
                
            else {
                
                self.resultLabel.text = "你輸了"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
            
        case self.scissorsButton :
            
            if self.guessNumber == self.array[1]  {
                
                self.resultLabel.text = "你贏了"
                
                self.blaWhiGuessButton.isEnabled = true
                
            }
                
            else if self.guessNumber == self.array[2] {
                
                self.resultLabel.text = "平手再來"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
                
            else {
                
                self.resultLabel.text = "你輸了"
                
                self.blaWhiGuessButton.isEnabled = false
                
            }
            
        default :
            
            break
            
        }

    }
    
    func guessRandom() {
        
        let randomNumber = GKRandomDistribution(lowestValue: 0, highestValue: self.array.count-1 )
        
        let number = randomNumber.nextInt()
        
        self.guessNumber = self.array[number]
        
        self.randomImageView.image = UIImage(named: "\(self.guessNumber)")
        
    }
    
    @IBAction func rePlay(_ sender: Any) {
        
        isHiddEnab(true)
        
        self.blaWhiGuessButton.isEnabled = false
        
    }
    
    override func viewDidLoad() {
      
        isHiddEnab(true)
        
        self.blaWhiGuessButton.isEnabled = false

        super.viewDidLoad()
        
    }
    
    func isHiddEnab ( _ hidEnab: Bool ) {
        
        self.randomImageView.isHidden = hidEnab
        
        self.resultLabel.isHidden = hidEnab
        
        self.paperButton.isEnabled = hidEnab
        
        self.rockButton.isEnabled = hidEnab
        
        self.scissorsButton.isEnabled = hidEnab
        
    }

}

