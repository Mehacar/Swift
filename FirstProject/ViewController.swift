//
//  ViewController.swift
//  FirstProject
//
//  Created by Tunahan Acar on 20.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var imageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        imageView.image = UIImage(named: "WebbDeepField")
    }
    
}

