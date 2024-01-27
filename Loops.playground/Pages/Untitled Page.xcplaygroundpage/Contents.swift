import UIKit

//Loops

for index in 1...5 {
    print("\(index):God bless Turkish!")
}

for _ in 1...5 {
    print("God bless Turkish!!")
}

let captainsOfFb : [String] = ["Ferdi", "Tadic", "Dzeko"]

for captain in captainsOfFb {
    print("Welcome to Fenerbahçe \(captain)!")
}

for letter in "Murat" {
    print("The letter is \(letter)")
}

for(index, letter) in "isik".enumerated(){
    print("\(index) : \(letter)")
}

