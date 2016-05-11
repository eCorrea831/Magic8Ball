//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Erica Correa on 5/10/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fortunesTextField: UITextView!
    var fortunes = ["It is certain","It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good",  "Signs point to yes", "Ask again later", "Don't count on it", "Outlook not so good", "Very doubtful"]
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event:UIEvent?) {
        if motion == .MotionShake {
            self.fortunesTextField.text = self.fortunes[random() % self.fortunes.count].uppercaseString
        }
    }
}

