//
//  AddCarViewController.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/18/24.
//

import UIKit
import CoreLocation
import Photos

class AddCarViewController: UIViewController, CLLocationManagerDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var makeInput: UITextField!
    @IBOutlet weak var modelInput: UITextField!
    @IBOutlet weak var yearInput: UITextField!
    @IBOutlet weak var costInput: UITextField!
    @IBOutlet weak var descriptionInput: UITextView!
    @IBOutlet weak var imagePreview: UIImageView!
    @IBOutlet weak var locationLabel: UILabel!
    
    let imagePicker = UIImagePickerController()
    let locationManager = CLLocationManager()
    var latitude: CLLocationDegrees = 0.0
    var longitude: CLLocationDegrees = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureImagePicker()
        imagePreview.image = nil // hide image preview initially...
        
        // Do any additional setup after loading the view.
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization() // request authorization
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation() // start updating location
        
    }
    
    @IBAction func didTapBackground(_ sender: UIControl) {
        self.makeInput.resignFirstResponder()
        self.modelInput.resignFirstResponder()
        self.yearInput.resignFirstResponder()
        self.costInput.resignFirstResponder()
        self.descriptionInput.resignFirstResponder()
    }
    
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func submitButtonPressed() {
        
        if makeInput.text == "" || modelInput.text == "" || yearInput.text == "" || costInput.text == "" || descriptionInput.text == "" {
            let title = "Error"
            let message = "All fields must be completed in order to submit your car for rent."
            let alertController =
            UIAlertController(title: title,
                              message: message,
                              preferredStyle: .alert)
            let cancelAction =
            UIAlertAction(title: "OK",
                          style: .cancel,
                          handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
        
        else {
            // add car to RentOut array...
            let title = "\(makeInput.text!) \(modelInput.text!) \(yearInput.text!)"
            let car = Car(title: title, description: descriptionInput.text, cost: Int(costInput.text!)!, location: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), imageName: "")
            RentOut.shared.rentedCars.append(car)
            
            // present confirmation that it has been added to WhipIt!
            let alertController =
            UIAlertController(title: "Car Added",
                              message: "We have added your car for rent on WhipIt!",
                              preferredStyle: .alert)
            let okayAction =
            UIAlertAction(title: "Okay",
                          style: .default) { _ in
                // dismiss alert controller and navigate back to previous screen
                self.dismiss(animated: true, completion: nil)
            }
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
    // Handling location manager methods...
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        // save the location to your database
        latitude = location.coordinate.latitude
        longitude = location.coordinate.longitude
        locationLabel.text = "\(latitude), \(longitude)"
    }
    
    // Handle authorization status changes
       func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
           switch manager.authorizationStatus {
           case .authorizedWhenInUse, .authorizedAlways:
               // start location services
               manager.startUpdatingLocation()
           case .denied, .restricted:
               // don't do anything
               break
           case .notDetermined:
               // don't do anything
               break
           default:
               break
           }
       }
    
    
    
    // Handling image picker methods...
    @IBAction func addPictureButtonPressed() {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func configureImagePicker() {
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[.originalImage] as? UIImage {
            imagePreview.image = image // update the image preview with user's selected image
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
}
