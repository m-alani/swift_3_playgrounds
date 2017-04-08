//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation


/// Simple function to find the Fibonacci Sqeuence value of N recursively
/// This function has the time complexity of O(2^n)
///
/// - Parameter n:  A non-negative integer representing the index of the Fibonacci sequence value to find
/// - Returns:      A non-negative integer of the Fibonacci value at the given index
func recursiveFib(of n: UInt) -> UInt {
    var fib: UInt = 1
    if (n > 1) {
        fib = recursiveFib(of: n-1) + recursiveFib(of: n-2)
    }
    return fib
}



/******************** BEGINNING OF MAIN ********************/

// Set N to the desired Fibonacci number you want to test against
let n: UInt = 40

var startingTime = Date()
var fibNumber = recursiveFib(of: n)
var elapsedTime = Double(round(Date().timeIntervalSince(startingTime) * 1000) / 1000)

print("The Fibonacci Sequence value of \(n) is: \(fibNumber)\n   Found in \(elapsedTime) seconds.")

/*********************** END OF MAIN ***********************/
