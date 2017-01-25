/*  A Swift implementation of the good old FizzBuzz simple programmer's test
    If you are not familiar with what the problem is, check it out at https://www.hackerrank.com/challenges/fizzbuzz

    This is (admittidly) an over-bloated solution for such a simple problem, however, I created it to practice writing testable & maintainable code (ex. You can apply Unit Tests against the functions), and also to practice Functional Programming principles (ex. `fizzBuzzLine()` is a pure function, while `printFizzBuzz()` isn't.
*/

import Foundation

// A function to print the "FizzBuzz" lines for the inclusive range of 1 to a given number
// The function return a status code: 0 (Success), 1 (Fail), 2 (Not all numbers printed successfully)
func printFizzBuzz(from1to input: Int) -> Int {
    var status: Int = -1
    
    // Protect against non-positive numbers
    if (input > 0) {
        for number in 1...input {
            let fizzBuzzConversion: (line: String, success: Bool) = fizzBuzzLine(for: number)
            if (fizzBuzzConversion.success) {
                print(fizzBuzzConversion.line)
            } else {
                // This specifc number failed to convert
                status = 2
            }
        }
        // If `status` is still on it's initial value, then the process succeeded for all numbers in range
        status = 0
    } else {
        // `input` is a non-positive number; the process failed
        status = 1
    }
    
    return status
}

// A function to convert a given postive number into a "FizzBuzz" line
// The funciton returns a Tuple containing a String with the "FizzBuzz" line and a Boolean representing the conversion success
// Note: In case the conversion fails, the function returns an empty String
func fizzBuzzLine(for number: Int) -> (String, Bool) {
    var line: String = ""
    var success: Bool = false
    
    // Protect against non-positive numbers
    if (number > 0) {
        if (number % 3 == 0) {
            line += "Fizz"
        }
        if (number % 5 == 0) {
            line += "Buzz"
        }
        
        // If the number is not devisible by neither 3 nor 5
        if (line.characters.count == 0) {
            line = "\(number)"
        }
        
        // Number conversion to "FizzBuzz" line succeeded
        success = true
    }
    
    return (line, success)
}


// **********************
// ******** MAIN ********
// **********************
// Set `input` to your desired number then run the code

let number: Int = 30
printFizzBuzz(from1to: number)

// **********************
// **** END OF FILE *****
// **********************
