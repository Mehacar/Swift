////
////  ViewController.swift
////  TravelMap
////
////  Created by Tunahan Acar on 2.02.2025.
////
//
//import UIKit
//import MapKit
//
//class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
//
//    @IBOutlet weak var mapView: MKMapView!
//    var locationManager = CLLocationManager()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        mapView.delegate = self
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//        
//        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(chosenRecognizer(gestureRecognizer:)))
//        gestureRecognizer.minimumPressDuration = 1.5
//        mapView.addGestureRecognizer(gestureRecognizer)
//    }
//    
//    @objc func chosenRecognizer(gestureRecognizer: UILongPressGestureRecognizer) {
//        if gestureRecognizer.state == .began {
//            let touchedPoint = gestureRecognizer.location(in: self.mapView)
//            let touchedCoordinates = mapView.convert(touchedPoint, toCoordinateFrom: mapView)
//            
//            let annotation = MKPointAnnotation()
//            annotation.coordinate = touchedCoordinates
//            annotation.title = "Selected Location"
//            annotation.subtitle = "400m away"
//            mapView.addAnnotation(annotation)
//
//            // Create an alert controller with a title and message
//            let alert = UIAlertController(title: "Add Annotation Details",
//                                          message: "Enter a name and note",
//                                          preferredStyle: .alert)
//            
//            // Add a text field for the name
//            alert.addTextField { textField in
//                textField.placeholder = "Name"
//            }
//            
//            // Add a text field for the note
//            alert.addTextField { textField in
//                textField.placeholder = "Note"
//            }
//            
//            // Create an action to add the annotation with the provided info
//            let addAction = UIAlertAction(title: "Add", style: .default) { _ in
//                let name = alert.textFields?[0].text
//                let note = alert.textFields?[1].text
//                
//                // Update the annotation title and subtitle from the text fields
//                annotation.title = name?.isEmpty == false ? name : "Selected Location"
//                annotation.subtitle = note?.isEmpty == false ? note : "400m away"
//                
//                self.mapView.addAnnotation(annotation)
//            }
//            
//            // "Cancel" action: remove the annotation from the map
//            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
//                self.mapView.removeAnnotation(annotation)
//            }
//            
//            alert.addAction(addAction)
//            alert.addAction(cancelAction)
//            
//            // Present the alert
//            present(alert, animated: true, completion: nil)
//
//        }
//            
//        
//    }
//    
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude , longitude: locations[0].coordinate.longitude)
//        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//        let region = MKCoordinateRegion(center: location, span: span)
//        mapView.setRegion(region, animated: true)
//    }
//
//
//}
//
