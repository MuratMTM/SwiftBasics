import UIKit

struct CitiesofTurkey: Equatable, Comparable {
    static func < (lhs: CitiesofTurkey, rhs: CitiesofTurkey) -> Bool {
       return lhs.population < rhs.population
    }
    
    let city: String
    let plate: Int
    let population: Double
}

let istanbul = CitiesofTurkey(city: "İstanbul", plate: 34, population: 20000000)
let ankara = CitiesofTurkey(city: "Ankara", plate: 06, population: 5800000)
let izmir = CitiesofTurkey(city: "İzmir", plate: 35, population: 4462000)
let antalya = CitiesofTurkey(city: "Antalya", plate: 07, population: 2364396)

let cities = [istanbul,ankara,izmir,antalya]

let citiesSortedByName = cities.sorted(by: >)

for city in citiesSortedByName {
    print(city)
}

