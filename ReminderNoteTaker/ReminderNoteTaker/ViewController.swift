//
//  ViewController.swift
//  ReminderNoteTaker
//
//  Created by Tunahan Acar on 26.12.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topicTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!

    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedTopic = UserDefaults.standard.object(forKey: "topic")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        //Casting - as? vs. as!
        
        if let strTopic = storedTopic as? String {
            topicLabel.text = "Topic: \(strTopic)"
        }
        if let strDate = storedDate as? String {
            dateLabel.text = "Date: \(strDate)"
        }
        
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(topicTextField.text!, forKey: "topic")
        UserDefaults.standard.set(dateTextField.text!, forKey: "date")
        //UserDefaults.standard.synchronize()

        topicLabel.text = "Topic: \(topicTextField.text!)"
        dateLabel.text = " Date: \(dateTextField.text!)"
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        let storedTopic = UserDefaults.standard.object(forKey: "topic")
        let storedDate = UserDefaults.standard.object(forKey: "date")
        
        if (storedTopic as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "topic")
            topicLabel.text = "Topic:"
        }
        if (storedDate as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "date")
            dateLabel.text = "Date:"
        }
            
        
        
        
    }
    

}

