import UIKit

//Reference Type
class ManUtd {
    
    var playerName: String
    var position: String
    var shirtNumber: Int
    
    init(playerName: String, position: String, shirtNumber: Int) {
        self.playerName = playerName
        self.position = position
        self.shirtNumber = shirtNumber
    }
}

var martial = ManUtd(playerName: "Antony Martial", position: "Forward", shirtNumber: 9)
var onana = martial

martial.position = "Defence"

print(martial.position)
print(onana.position)


//Value Type
struct Manu {
    var playerName: String
    var position: String
    var shirtNumber: Int
}

var garnacho = Manu(playerName: "Alejandro Garnacho", position: "Forward", shirtNumber: 17)

var rashford = garnacho

garnacho.shirtNumber = 78

print(garnacho.shirtNumber)
print(rashford.shirtNumber)
