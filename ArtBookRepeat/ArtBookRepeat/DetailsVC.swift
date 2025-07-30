//
//  DetailsVC.swift
//  ArtBookRepeat
//
//  Created by Tunahan Acar on 13.05.2025.
//

import UIKit
import CoreData

class DetailsVC: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveButtonClicked(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let content = appDelegate.persistentContainer.viewContext
        
        let newPainting = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: content)
        
        newPainting.setValue(nameText.text!, forKey: "name")
        
        if let year = Int(yearText.text!) {
            newPainting.setValue(year, forKey: "year")
        }
        
        do {
            try content.save()
            print("content save success")
        } catch {
            print("content save error")
        }
        
        
    }
    

}
