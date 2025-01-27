//
//  MapViewController.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/16/24.
//

import UIKit
import MapKit


class MapViewController: UIViewController {
    
    
    @IBOutlet weak var carOnMap: MKMapView!
    var car: Car?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = car!.location
        annotation.title = car?.title

        carOnMap.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
        carOnMap.setRegion(region, animated: true)
        carOnMap.isZoomEnabled = true
        
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
