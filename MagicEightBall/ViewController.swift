//
//  ViewController.swift
//  MagicEightBall
//
//  Created by admin on 8/17/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "No", "Without a doubt", "Possibly", "Try again", "Very doubtful", "Don't count on it", "Sure"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var shakeButton: UIButton!
    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        generateAnswer()
        
    }
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        answerLabel.text = answers[randomIndex]
    }
}

