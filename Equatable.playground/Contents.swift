import UIKit

struct GamingLaptop: Equatable {
    var brandName: String
    var modelName: String
    var chipset: String
    var ram: Int
    var rom: String
    
    
///  When we do not use the "Equatable" protocol, we should use the following function.
    /*
     static func ==(lhs: GamingLaptop, rhs: GamingLaptop) -> Bool {
     return lhs.brandName == rhs.brandName && lhs.chipset == rhs.chipset && lhs.modelName == rhs.modelName && lhs.ram == rhs.ram
     }
     */
    
}

var legion5 = GamingLaptop(brandName: "Lenovo", modelName: "Legion 5", chipset: "Intel i7 11600H", ram: 16, rom: "1 TB")
var legion_5 = GamingLaptop(brandName: "Lenovo", modelName: "Legion 5", chipset: "AMD Ryzen 7 5800H", ram: 16, rom: "1 TB")



if (legion5 == legion_5){
    print("bu iki pc bütün özellikleriyle beraber aynıdır.")
} else{
    print("bu iki pc aynı değildir.")
}




