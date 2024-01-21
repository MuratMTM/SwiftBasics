import UIKit

//Array
var primeNumbers: [Int] = [2,3,5,7,11,13]

primeNumbers.append(17)
primeNumbers.count
primeNumbers.first
primeNumbers.contains(19)
primeNumbers.insert(23, at: 5)
primeNumbers.removeFirst()
primeNumbers.sort(by:<)

print(primeNumbers)

//Dictionary

var theBestOfBasketballChampCount: Dictionary<String, Int> =
    [
        "Bill Russell" : 11,
        "Sam Jones" : 10,
        "Tom Heinsohn" : 8,
        "Micheal Jordan" :7,
    ]

theBestOfBasketballChampCount.updateValue(6, forKey: "Micheal Jordan")
print(theBestOfBasketballChampCount)

if let removedValue = theBestOfBasketballChampCount.removeValue(forKey: "Sam Jones"){
    print("Sam Jones had \(removedValue) championships.")
}

theBestOfBasketballChampCount.sorted(by: >)

let players = theBestOfBasketballChampCount.keys
let champsCount = theBestOfBasketballChampCount.values

print("The best basketball players are \(players)")
print("The number of championships of the basketball players with the most champs \(champsCount) in order.")


