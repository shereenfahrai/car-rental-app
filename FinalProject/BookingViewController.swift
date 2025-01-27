//
//  BookingViewController.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/17/24.
//

import UIKit

let hour_slots: [String] = ["2","3","4","5","6","7","8","9","10","11","12"]

class BookingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var durationPicker: UIPickerView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var timeSelected: UIDatePicker!
    var car: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let c = car {
            titleLabel.text = c.title
            carImage.image = UIImage(named: c.imageName)
        }
        durationPicker.dataSource = self
        durationPicker.delegate = self
            
        // reload data to ensure UIPickerView displays properly
        durationPicker.reloadAllComponents()
        
    }
    
    
    // MARK: UIPickerViewDataSource

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hour_slots.count
    }
    
    // MARK: UIPickerViewDelegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return hour_slots[row]
    }
    
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func confirmBooking() {
        let selectedTime = timeSelected.date
        // create a DateFormatter to extract the time components
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mm a" // format to display time only in American 12-hour format with AM/PM
        // format to extract just the time
        let formattedTime = dateFormatter.string(from: selectedTime)
        
        // fetch remaining values to show in message
        let duration = hour_slots[durationPicker.selectedRow(inComponent: 0)]
        let totalCost = car!.cost * Int(duration)!
        let alertController =
            UIAlertController(title: "Booking Confirmed",
                              message: "Your booking has been confirmed for today!\nTime: \(formattedTime)\nDuration: \(duration) hours\nTotal: $\(totalCost)",
                              preferredStyle: .alert)
        let okayAction =
            UIAlertAction(title: "Okay",
                          style: .default) { _ in
                    // Dismiss alert controller and navigate back to previous screen
                    self.dismiss(animated: true, completion: nil)
                }
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)

    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
