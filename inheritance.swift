//
//  main.swift
//  Inheritance
//
//  Created by Murat Işık on 18.01.2024.
//

import Foundation


//Inheritance
class SmartDevices {
    var type: String
    var brand: String
    var os: String
    
    
    init(brand: String, os: String, type: String) {
        self.type = type
        self.brand = brand
        self.os = os
        
        
        
    }
    
    func rechargable() -> String {
        return "This is your adapter for charging"
    }
}

class Ipad: SmartDevices {
    var hasPencil: Bool
    
    // Override Initializer
    init(type: String, brand: String, os: String, hasPencil: Bool) {
        self.hasPencil = hasPencil
        super.init(brand: brand, os: os, type: type)
        
    }
    
    //Override Methods and Properties
    override func rechargable() -> String {
        return "this is your 20W adapter for fast charging"
    }
    
}

extension Ipad {
    var pencilStatus: String {
        hasPencil ? "yes" : "no"
    }
}


let galaxyZFold = SmartDevices(brand: "Samsung", os: "Android", type: "Mobile Phone")
print(galaxyZFold.os)
print(galaxyZFold.rechargable())


let ipadPro = Ipad(type: "Tablet", brand: "Apple", os: "iPadOS", hasPencil: true)
print(ipadPro.pencilStatus)
print(ipadPro.rechargable())






