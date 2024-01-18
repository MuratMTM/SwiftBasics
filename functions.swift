//
//  main.swift
//  Functions
//
//  Created by Murat Işık on 16.01.2024.
//

import Foundation

struct MyCarFuelConsumption {
    var fuelAmountPerHundredKm: Double
    var fuelType: String
    var trip: Double
    
    func calculateFuelExpense() -> Double {
        var priceOfOneLiterOfFuel: Double
        
        switch fuelType {
        case "diesel":
            priceOfOneLiterOfFuel = 39.03
        case "gas":
            priceOfOneLiterOfFuel = 36.84
        default:
            print("Please enter the correct fuel type!")
            return 0.0
        }
        
        let fuelExpense = ((fuelAmountPerHundredKm * (priceOfOneLiterOfFuel)) / 100) * trip
        
        return fuelExpense
    }
}

let myLogan = MyCarFuelConsumption(fuelAmountPerHundredKm: 6.9, fuelType: "gas", trip: 200)
let fuelExpense = myLogan.calculateFuelExpense()
print("Fuel expense for the trip: \(fuelExpense)TL")


func showDerivateMessage(trigo: String){
    print("Girdiğiniz trigonometrik foksiyonun türevi \(trigo)'dir.")
}


func sayDerivates(trigoAngle: String){
    switch trigoAngle {
    case "sinx":
       
        showDerivateMessage(trigo: "cosx")
    case "cosx":
        showDerivateMessage(trigo: "-sinx")
    case "tanx":
        showDerivateMessage(trigo: "cotx")
    case "cotx":
        showDerivateMessage(trigo: "-tanx")
    default:
        print("Please enter a basic trigonometric function!")
    }
       
        
    
}
sayDerivates(trigoAngle: "tanx")



//Default Parameter Values
func showPhoneFeatures(_ brandName: String, _ os: String = "Android", _ version: Int = 13){
    print("Tebrikler! Cihazınızın markası \(brandName)'dir. İşletim sistemi \(os)'dir. Versiyonu ise \(version)'dür.")
}

showPhoneFeatures("Xiaomi 12")
showPhoneFeatures("Google Pixel 8","Android",14)


//Custom Initializations

struct Distance {
    var kilometer: Double
    var mil: Double
    var meter: Double
    
    init(kilometer: Double) {
        self.kilometer = kilometer
        mil = kilometer / 1.6
        meter = kilometer * 1000
    }
    
    init(mil: Double){
        self.mil = mil
        kilometer = 1.6 * mil
        meter = (mil * 1.6) * 1000
        
    }
    
    init (meter: Double){
        self.meter = meter
        kilometer = meter / 1000
        mil = (meter / 1000) / 1.6
    }
    
    
}

let istToAnk = Distance(mil: 450)
let istToVan = Distance(meter: 1000000)

print(istToAnk.kilometer)
print(istToAnk.meter)
print(istToVan.kilometer)
print(istToVan.mil)

//Property Observers

struct MacbookPro {
    var screenSize : Double = 13.2 {
        willSet{
            print("screen size of your new Macbook Pro:\(newValue) inc. ")
        }
        didSet{
            print("screen size of your old Macbook Pro:\(oldValue) inc. ")
        }
    }
}

var myMacbook = MacbookPro()
myMacbook.screenSize = 14
myMacbook.screenSize = 16


//Copying

struct  Geometric{
    var area: Double
    var volume: Double
}

var cube = Geometric(area: 25, volume: 88)
var prisma = cube

cube.area = 37

print(cube.area)
print(prisma.area)
