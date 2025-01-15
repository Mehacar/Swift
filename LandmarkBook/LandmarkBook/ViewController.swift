//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Tunahan Acar on 15.01.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkName = [String]()
    var landmarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkName.append("Parker Solar Probe")
        landmarkName.append("Hubble")
        landmarkName.append("James Webb")
        landmarkName.append("Athena")
        
        landmarkImages.append(UIImage(named: "parkerSolarProbe")!)
        landmarkImages.append(UIImage(named: "hubble")!)
        landmarkImages.append(UIImage(named: "jamesWebb")!)
        landmarkImages.append(UIImage(named: "athena")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        //content.text = "What is Table View ?"
        //content.secondaryText = "17 min"
        content.text = landmarkName[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkName[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toImagesVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImagesVC"{
            let destinationVC = segue.destination as! ImageVC
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,
                    forRowAt indexPath: IndexPath){
        if editingStyle == .delete {
            self.landmarkName.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    


}

