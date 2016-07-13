//
//  Dealership.swift
//  GMD
//
//  Created by Eugene on 6/28/16.
//  Copyright © 2016 Ievgenii Pavlov. All rights reserved.
//

import UIKit

class Dealership: NSObject {
    
    let name: String!
    let brand: String!
    let image: UIImage!
    let address: String!
    let phone: String!
    let distanceAway: String!
    
    /*
     More data can be stored in this class, for example: map coordinates, hours of operation, list of sales representatives, contact information, etc.
     */
    
    init(name: String, brand: String, imageName: String, address: String, phone: String, distanceAway: String) {
        self.name = name
        self.brand = brand
        self.image = UIImage(named: imageName)
        self.address = address
        self.phone = phone
        self.distanceAway = distanceAway
    }
    
    /**
     Function to load list of dealerships
     
     - returns: array of dealerships
     */
    static func loadDealerships() -> [Dealership] {
        // Logic to retrieve list of dealerships should be written here or alternatively in a separate Data Management layer
        // For testing purposes data will be hardcoded below and returned as array of dealerships
        
        let d1 = Dealership(name: "Somerset Buick GMC", brand: "Buick", imageName: "d1", address: "1850 W Maple Rd, Troy, MI 48083", phone: "2485666471", distanceAway: "1.2 miles away")
        let d2 = Dealership(name: "Hamilton Chevrolet", brand: "Chevrolet", imageName: "d2", address: "5800 E 14 Mile Rd, Warren, MI 48092", phone: "5868381768", distanceAway: "4 miles away")
        let d3 = Dealership(name: "Ed Rinke Chevrolet GMC", brand: "Chevrolet", imageName: "d3", address: "26125 Van Dyke Ave, Center Line, MI 48015", phone: "5867547000", distanceAway: "5.8 miles away")
        
        return [d1, d2, d3]
    }
}
