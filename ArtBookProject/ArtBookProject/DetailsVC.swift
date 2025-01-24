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
    
    var chosenPainting = ""
    var chosenPaintingId : UUID?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.save, target: self, action: #selector(saveButton))

        if chosenPainting != "" {
            //coreData
            
            navigationItem.rightBarButtonItem?.isHidden = true // save button
            view.backgroundColor = .lightGray
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            
            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Paintings")
            let idString = chosenPaintingId?.uuidString
            fetchRequest.predicate = NSPredicate(format: "id = %@", idString!)
            fetchRequest.returnsObjectsAsFaults = false
            
            do {
                let results = try context.fetch(fetchRequest)
                if results.count > 0 {
                    for result in results as! [NSManagedObject] {
                        if let name = result.value(forKey: "name") as? String {
                            nameTextField.text = name
                        }
                        if let artist = result.value(forKey: "artist") as? String {
                            artistTextField.text = artist
                        }
                        if let year = result.value(forKey: "year") as? Int {
                            yearTextFiled.text = String(year)
                        }
                        if let imageData = result.value(forKey: "image") as? Data {
                            let image = UIImage(data: imageData)
                            imageView.image = image
                        }
                    }
                }
            } catch {
                print("error")
            }
//            let stringUUID = chosenPaintingId!.uuidString
//            print(stringUUID)
        } else {
            navigationItem.rightBarButtonItem?.isEnabled = false
            navigationItem.rightBarButtonItem?.isHidden = false
        }
        
        // Recognizers
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
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
            
            navigationItem.rightBarButtonItem?.isEnabled = true //save button
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
    
    @objc func hideKeyboard() {
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
        
        NotificationCenter.default.post(name: NSNotification.Name("newData"), object: nil)
        self.navigationController?.popViewController(animated: true)
    }
    

}
