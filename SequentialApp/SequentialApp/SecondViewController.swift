//
//  SecondViewController.swift
//  SequentialApp
//
//  Created by Tunahan Acar on 27.12.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var MyLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

    }
    


}
