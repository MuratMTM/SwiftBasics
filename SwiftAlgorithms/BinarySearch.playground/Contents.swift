import UIKit

let numbers: [Int] = [9,17,25,34,46,59,61,73,80,97]

func binarySarchFindVariable(searchValue: Int, array: [Int]) -> Bool {
    var rightIndex: Int = array.count - 1
    var leftIndex: Int = 0
    let info: String = "The array doesn't contain the value"
    
    while leftIndex <= rightIndex {
        let middleIndex = (rightIndex + leftIndex) / 2
        let middleValue = numbers[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex)")
        
        if searchValue == middleValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
    }
    print(info)
    return false
}

binarySarchFindVariable(searchValue: 61, array: numbers)
