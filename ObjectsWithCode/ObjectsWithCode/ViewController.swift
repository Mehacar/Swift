//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Tunahan Acar on 26.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.width
        let height = view.frame.height
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - (width * 0.6 / 2), y: height * 0.5 - (height * 0.6 / 2), width: width * 0.6, height: height * 0.6)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle( "Start", for: .normal )
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.7, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.start), for: UIControl.Event.touchUpInside)
    }
    
    @objc func start(){
        myLabel.text = "Started"
    }
    
    
    
}

