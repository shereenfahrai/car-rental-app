//
//  RentOut.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/17/24.
//

import Foundation
import MapKit

class RentOut {
    
    var rentedCars: [Car] = [
        Car(title: "Volkswagen Jetta 2008",
            description: "Awesome, clean car.",
            cost: 4,
            location: CLLocationCoordinate2D(latitude: 32.02210529974362, longitude: -116.78961422091334),
            imageName: "Volkswagen Jetta 2008")
    ]
    
    static var shared = RentOut()

}


