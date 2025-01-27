//
//  CarDetailViewController.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/16/24.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    
    var car: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let c = car {
            titleLabel.text = c.title
            descriptionLabel.text = c.description
            costLabel.text = String(c.cost)
            carImage.image = UIImage(named: c.imageName)
        }
    }


    
    // MARK: - Navigation

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         if let mapViewController = segue.destination as? MapViewController {
             mapViewController.car = self.car
         }
         if let bookingViewController = segue.destination as? BookingViewController {
             bookingViewController.car = self.car
         }
     }

}
