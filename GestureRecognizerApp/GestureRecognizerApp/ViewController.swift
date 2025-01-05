//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Tunahan Acar on 5.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ExplanationImageView: UILabel!
    
    var tapped = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePic() {
        //print("tapped")

        if (tapped == true){
            imageView.image = UIImage(named: "AfterLaunch")
            ExplanationImageView.text = "After Launch"
            tapped = false
        } else {
            imageView.image = UIImage(named: "beforeLaunch")
            ExplanationImageView.text = "Before Launch"
            tapped = true
        }

    }
}

