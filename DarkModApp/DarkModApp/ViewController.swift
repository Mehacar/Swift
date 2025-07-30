//
//  ViewController.swift
//  DarkModApp
//
//  Created by Tunahan Acar on 19.07.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //overrideUserInterfaceStyle = .light // for one page dark mode inactive

    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = UIColor.blue
        }
    }


}

