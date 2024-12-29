//
//  ViewController.swift
//  SequentialApp_LoginScreen
//
//  Created by Tunahan Acar on 29.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    var userName = ""
    var userSurName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameTextField.text = ""
        surnameTextField.text = ""
    }

    @IBAction func nextButton(_ sender: Any) {
        userName = nameTextField.text!
        userSurName = surnameTextField.text!
        
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
            destinationVC.mySurName = userSurName
        }
    }
    
    
}

