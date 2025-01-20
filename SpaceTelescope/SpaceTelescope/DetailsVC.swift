//
//  DetailsVC.swift
//  SpaceTelescope
//
//  Created by Tunahan Acar on 20.01.2025.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var selectedTelescope : Telescope?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedTelescope?.name
        yearLabel.text = String(selectedTelescope?.year ?? 0)
        imageView.image = selectedTelescope?.image
        
    }
    


}
