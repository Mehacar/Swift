//
//  ViewController.swift
//  TimerPreject
//
//  Created by Tunahan Acar on 5.01.2025.
//

import UIKit

class ViewController: UIViewController {

    var counter = 10
    var timer = Timer()
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction(){
        
        if (counter >= 0){
            timeLabel.text = "Timer: \(counter)"
        } else {
            timeLabel.text = "Time's Over"
            timer.invalidate()
        }
        counter -= 1
    }

    @IBAction func buttonClicked(_ sender: Any) {
        print("button Clicked")
    }
    

    
}

