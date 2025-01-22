//
//  DetailsVC.swift
//  ArtBookProject
//
//  Created by Tunahan Acar on 21.01.2025.
//

import UIKit
import CoreData
import PhotosUI

class DetailsVC: UIViewController, PHPickerViewControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    @IBOutlet weak var yearTextFiled: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.save, target: self, action: #selector(saveButton))

        // Recognizers
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyword))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
        
    }
    
    @objc func selectImage() {
            var configuration = PHPickerConfiguration()
            configuration.selectionLimit = 1 // 0 - unlimited | 1 - one image
        configuration.filter = .images   // just show images
            
            let picker = PHPickerViewController(configuration: configuration)
            picker.delegate = self
            present(picker, animated: true)
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            // close the picker
            picker.dismiss(animated: true)
            
            // take the chosen image
            guard let result = results.first else { return }
            
            result.itemProvider.loadObject(ofClass: UIImage.self) { [weak self] reading, error in
                if let error = error {
                    print("Error loading image: \(error.localizedDescription)")
                    return
                }
                
                if let image = reading as? UIImage {
                    // Do it UI updates in main thread
                    DispatchQueue.main.async {
                        self?.imageView.image = image
                    }
                }
            }
        }
    

//        @objc func selectImage(){
//            let picker = UIImagePickerController()
//            picker.delegate = self
//            picker.sourceType = .photoLibrary     // this method is old look here again ! (looked)
//            picker.allowsEditing = true //image editing tool
//            present(picker, animated: true, completion: nil)
//        }
//
//    
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            imageView.image = info[.originalImage] as? UIImage //assign image variable type
//            self.dismiss(animated: true, completion: nil)
//        }
    
    @objc func hideKeyword() {
        view.endEditing(true)
    }

    @objc func saveButton() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newPainting = NSEntityDescription.insertNewObject(forEntityName: "Paintings", into: context)
        
        //Attributes
        
        newPainting.setValue(nameTextField.text!, forKey: "name")
        newPainting.setValue(artistTextField.text!, forKey:  "artist")
        newPainting.setValue(UUID(), forKey: "id")
        
        
        if let year = Int(yearTextFiled.text!) {
            newPainting.setValue(year, forKey: "year")
        }
        
        let data = imageView.image?.jpegData(compressionQuality: 0.5)
        newPainting.setValue(data, forKey: "image")
        
        do {
            try context.save()
            print("success")
        } catch {
            print("error")
        }
        
        
        
        
        
    }
    

}
