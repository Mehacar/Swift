//
//  SecondViewController.swift
//  SequentialApp_LoginScreen
//
//  Created by Tunahan Acar on 29.12.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myName = ""
    var mySurName = ""
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.numberOfLines = 0 // support multiple line in Label
        nameLabel.text! = "Name: \(myName) \nSurname: \( mySurName) "
        

        // Do any additional setup after loading the view.
    }
    

    
}
