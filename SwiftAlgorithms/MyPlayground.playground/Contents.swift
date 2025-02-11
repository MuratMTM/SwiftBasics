import UIKit
//Collatz Challange
//1-Choose a positive integer.
//2- If the number is even divide it by 2, and if it is odd multiply by 3 then add 1.
//3-Repeat step 2 with the new number.
//4- the Collatz conjecture asserts that fallowing these steps will always lead to 1, for any starting integer greater than 0.


func collatz(number: Int) -> Int {
    var counter: Int = 0
    while number != 1 {
        if number <= 0 {
            print("The number must be positive.")
            break
        }
        
        else if number % 2 == 0 {
           var number = number / 2
        }
        else if number % 2 == 1 {
           var number = (number * 3) + 1
        }
        counter += 1
      
        
    }
    print("Step:\(counter)")
    return number

    
}

collatz(number: 27)


