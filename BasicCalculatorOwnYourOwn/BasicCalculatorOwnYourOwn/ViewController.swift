//
//  ViewController.swift
//  BasicCalculatorOwnYourOwn
//
//  Created by Tunahan Acar on 24.12.2024.
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
    
    @IBAction func sumButton(_ sender: Any) {
        if let number1 = Int(firstText.text!){
            if let number2 = Int(secondText.text!){
                result = number1 + number2
                resultLabel.text = String(result)
            } else {
                resultLabel.text = "Invalid Value"
            }
        } else {
            resultLabel.text = "Invalid Value"
        }
    }
    
    @IBAction func minusButton(_ sender: Any) {
        if let number1 = Int(firstText.text!){
            if let number2 = Int(secondText.text!){
                result = number1 - number2
                resultLabel.text = String(result)
            } else {
                resultLabel.text = "Invalid Value"
            }
        } else {
            resultLabel.text = "Invalid Value"
        }

    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        if let number1 = Int(firstText.text!){
            if let number2 = Int(secondText.text!){
                result = number1 * number2
                resultLabel.text = String(result)
            } else {
                resultLabel.text = "Invalid Value"
            }
        } else {
            resultLabel.text = "Invalid Value"
        }

    }
    
    @IBAction func divideButton(_ sender: Any) {
        if let number1 = Int(firstText.text!){
            if let number2 = Int(secondText.text!){
                result = number1 / number2
                resultLabel.text = String(result)
            } else {
                resultLabel.text = "Invalid Value"
            }
        } else {
            resultLabel.text = "Invalid Value"
        }

    }
}

