//
//  ViewController.swift
//  SequentialApp
//
//  Created by Tunahan Acar on 27.12.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabelFirst: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad was called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear was called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameText.text = ""
        print("viewWillApper was called")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisapper was called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisapper was called")
    }

    @IBAction func nextButton(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            // as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

