//
//  ViewController.swift
//  Concentration
//
//  Created by freefunfee on 2018/10/12.
//  Copyright © 2018 freefunfee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip Count: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!

    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
//        let cardNumber = cardButtons.firstIndex(  of: sender)!
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    
    // 翻转卡片方法
    func flipCard (withEmoji emoji:String, on button:UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
              button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

