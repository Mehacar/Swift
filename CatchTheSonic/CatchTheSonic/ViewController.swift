//
//  ViewController.swift
//  CatchTheSonic
//
//  Created by Tunahan Acar on 7.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreBoard: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    
    // Assigned imageView property
    var sonicImageView : UIImageView?
    
    var timer = Timer()
    var imageGenerator = Timer()
    var counter = 10
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        rondomGenerator()
        defaultReminder()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunc), userInfo: nil, repeats: true)
        imageGenerator = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(rondomGenerator), userInfo: nil, repeats: true)
        

    }
    
    @objc func rondomGenerator(){
        if let existingImageView = sonicImageView {
            existingImageView.removeFromSuperview()
        }

        let image = UIImage(named: "sonic")
        let imageView = UIImageView(image: image)
        let rondomXAxis = Int.random(in: 1...30)
        let rondomYAxis = Int.random(in: 17...50)
        
        imageView.frame = CGRect(x: rondomXAxis*10, y: rondomYAxis*10, width: 130, height: 185)
        view.addSubview(imageView)
        sonicImageView = imageView
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognition = UITapGestureRecognizer(target: self , action: #selector(scoreIncrease))
        imageView.addGestureRecognizer(gestureRecognition)
    }
    
    func defaultReminder(){
        let highscore = UserDefaults.standard.object(forKey: "highscore")
        
        if let hscr = highscore as? Int{
            highscoreLabel.text = "Highscore: \(hscr)"
            
        }
    }
    
    @objc func scoreIncrease(){
        score += 1
        scoreBoard.text = "Score: \(score)"

    }
    
    @objc func timeFunc() {
        if (counter >= 0){
            timeLabel.text = "\(counter)"
            
        } else {

            
            timer.invalidate()
            imageGenerator.invalidate()
            makeAlert(titleInput: "Time's Up!", mesageInput: "Do you want to reply?")
        }
        counter -= 1

        
    }
    
    func makeAlert(titleInput: String, mesageInput: String) {
        
        UserDefaults.standard.set(score, forKey: "highscore")
        highscoreLabel.text = "Highscore: \(score)"
        
        let alert = UIAlertController(title: titleInput, message: mesageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        let replyButton = UIAlertAction(title: "Reply", style: UIAlertAction.Style.default) { [self] (UIAlertAction) in
            self.counter = 10
            self.score = 0
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeFunc), userInfo: nil, repeats: true)
            self.imageGenerator = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(rondomGenerator), userInfo: nil, repeats: true)
            
        }
        
        alert.addAction(okButton)
        alert.addAction(replyButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    


}

