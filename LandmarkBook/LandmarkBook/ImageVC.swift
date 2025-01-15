//
//  ImageVC.swift
//  LandmarkBook
//
//  Created by Tunahan Acar on 15.01.2025.
//

import UIKit

class ImageVC: UIViewController {
    @IBOutlet weak var landmarkView: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        landmarkView.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage

    }
    
    
    


}
