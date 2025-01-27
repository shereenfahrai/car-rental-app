//
//  Car.swift
//  FinalProject
//
//  Created by shereen fahrai on 3/16/24.
//

import Foundation
import MapKit

class Car {
    
    var title: String // includes the make, model, and year
    var description: String // description provided by renter
    var cost: Int // cost of rental per hour
    var location: CLLocationCoordinate2D // coordinates (location) of car obtained through Core Location
    var imageName: String // image of car uploaded by renter
    
    init(title: String, description: String, cost: Int, location: CLLocationCoordinate2D, imageName: String) {
        self.title = title
        self.description = description
        self.cost = cost
        self.location = location
        self.imageName = imageName
    }
}


let cars = [
    Car(title: "Chevy Silverado 2015",
        description: "Discover the perfect blend of strength and comfort with our 2015 Chevy Silverado rental. This robust pickup truck offers powerful performance, spacious seating, advanced technology, and top-notch safety features. Whether you're tackling tough terrain or cruising through city streets, the Silverado has you covered. Rent now for a reliable and versatile driving experience!",
        cost: 7,
        location: CLLocationCoordinate2D(latitude: 32.62210529974362, longitude: -116.98961422091334),
        imageName: "Chevy Silverado 2015"),
    
    Car(title: "Honda Accord 2019",
        description: "Experience luxury like never before with our 2019 Honda Accord rental. Glide through the streets in style, courtesy of its efficient performance and sophisticated interior. Loaded with cutting-edge technology and safety features, this sedan is your ticket to a refined driving experience. Don't miss out – rent today and elevate your journey to new heights of elegance!",
        cost: 5,
        location: CLLocationCoordinate2D(latitude: 32.62086673891824, longitude: -116.97585273228195),
        imageName: "Honda Accord 2019"),
    
    Car(title: "Nissan Sentra 2013",
        description: "Experience dependability with our 2013 Nissan Sentra rental. Enjoy efficient performance, a comfortable interior, and affordability all in one stylish package. Rent now and discover the simplicity and reliability of the Sentra!",
        cost: 3,
        location: CLLocationCoordinate2D(latitude: 32.64682063764788, longitude: -117.00753071165465),
        imageName: "Nissan Sentra 2013"),
    
    Car(title: "Ford Mustang 2018",
        description: "Get ready to feel the thrill of the open road with our 2018 Ford Mustang rental. This iconic muscle car combines breathtaking performance, timeless style, and cutting-edge technology to deliver an unforgettable driving experience. Whether you're cruising along the highway or tearing up the track, the Mustang's powerful engine and agile handling will leave you exhilarated. Rent now and unleash the power of this American legend!",
        cost: 9,
        location: CLLocationCoordinate2D(latitude: 32.66317359142878, longitude: -116.94275902355425),
        imageName: "Ford Mustang 2018"),
    
    Car(title: "Toyota Prius 2020",
        description: "Make a statement while saving the planet with our 2020 Toyota Prius rental. This eco-friendly hybrid offers exceptional fuel efficiency, advanced technology, and a spacious interior for a comfortable ride. With its distinctive design and innovative features, the Prius is perfect for eco-conscious drivers who refuse to compromise on style or performance. Rent now and embark on a greener, more sustainable journey!",
        cost: 4,
        location: CLLocationCoordinate2D(latitude: 32.64510609422283, longitude: -117.02438219155353),
        imageName: "Toyota Prius 2020"),
    
    Car(title: "Jeep Wrangler Unlimited 2017",
        description: "Embrace adventure with our 2017 Jeep Wrangler rental. Built to tackle rugged terrain and conquer the great outdoors, this iconic SUV offers unmatched off-road capability, rugged durability, and open-air freedom. Whether you're exploring rocky trails or cruising along sandy beaches, the Wrangler's legendary 4x4 capabilities will take you wherever your heart desires. Rent now and experience the thrill of off-road exploration like never before!",
        cost: 6,
        location: CLLocationCoordinate2D(latitude: 32.68148222295878, longitude: -117.01949034522902),
        imageName: "Jeep Wrangler Unlimited 2017"),
    
    Car(title: "BMW X5 2019",
        description: "Experience the epitome of luxury and performance with our 2019 BMW X5 rental. This premium SUV boasts a sleek design, powerful engine options, and cutting-edge technology features that elevate every aspect of your driving experience. From its opulent interior with exquisite materials to its dynamic driving dynamics and advanced safety systems, the X5 delivers unparalleled comfort, style, and confidence on the road. Rent now and indulge in the ultimate driving luxury with the BMW X5!",
        cost: 10,
        location: CLLocationCoordinate2D(latitude: 32.64130975841605, longitude: -116.93727673522518),
        imageName: "BMW X5 2019")
    ]

