//
//  ViewController.swift
//  AlertProject
//
//  Created by Tunahan Acar on 4.01.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpButton(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error", message: "Info boxes can not be empty!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
            // after clicked mesage, mostly not necessary
            print("Button clicked")
        }
        */
        
        
        /* 1-
        let alert = UIAlertController(title: "Error", message: "Info boxes can not be empty!", preferredStyle: UIAlertController.Style.alert)
        let passwordAlert = UIAlertController(title: "Error", message: "Passwords are not compatible!", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        
        if (usernameText.text! == "") || (passwordText.text! == "") || (password2Text.text! == ""){
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        if (passwordText.text! != password2Text.text!){
            passwordAlert.addAction(okButton)
            self.present(passwordAlert, animated: true, completion: nil)
        }
        */
        
        //2-
        if (usernameText.text! == ""){
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        } else if (passwordText.text! == "") || (password2Text.text! == ""){
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        } else if (passwordText != password2Text){
            makeAlert(titleInput: "Error", messageInput: "Passwords did not match")
        } else {
            makeAlert(titleInput: "Succes", messageInput: "User Ok")
        }
        
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }

}

// if  where esle is empty show alert mesage
// check password compatibility


