//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Tunahan Acar on 23.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumIcon(_ sender: Any) {
        //let firstNumber = Int(firstText.text!)!
        //let secoundNumber = Int(secondText.text!)!
        
        //let result = firstNumber + secoundNumber
        //resultLabel.text = String(result)

        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
        
        
    }
    
    @IBAction func minusIcon(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func divideIcon(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func multiplyIcon(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
}

