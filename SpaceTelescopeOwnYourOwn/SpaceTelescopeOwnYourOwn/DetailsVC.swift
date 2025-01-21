//
//  DetailsVC.swift
//  SpaceTelescopeOwnYourOwn
//
//  Created by Tunahan Acar on 21.01.2025.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    var selectedTelescope: Telescope?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedTelescope?.name
        yearLabel.text = selectedTelescope?.year
        imageView.image = selectedTelescope?.image
    }
    
    
    

}
