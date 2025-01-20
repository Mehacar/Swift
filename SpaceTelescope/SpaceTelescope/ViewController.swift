//
//  ViewController.swift
//  SpaceTelescope
//
//  Created by Tunahan Acar on 20.01.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myTelescope = [Telescope]()
    var chosenTelescope : Telescope?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let parkerSolarProbe = Telescope(nameInit: "Parker Solar Probe", yearInit: 2018, imageInit: UIImage(named: "parkerSolarProbe")!)
        let hubble = Telescope(nameInit: "Hubble", yearInit: 1990, imageInit: UIImage(named: "hubble")!)
        let jamesWebb = Telescope(nameInit: "James Webb", yearInit: 2021, imageInit: UIImage(named: "jamesWebb")!)
        let athena = Telescope(nameInit: "Athena", yearInit: 2035, imageInit: UIImage(named: "athena")!)
        
        myTelescope.append(parkerSolarProbe)
        myTelescope.append(hubble)
        myTelescope.append(jamesWebb)
        myTelescope.append(athena)


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTelescope.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myTelescope[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenTelescope = myTelescope[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedTelescope = chosenTelescope
        }
    }
    
    
}

