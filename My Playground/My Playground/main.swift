//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read T
let cases = Int(readLine()!)!

// Process the cases
var output = [Int]()
for _ in 1...cases {
    let input = String(readLine()!)!.components(separatedBy: " ").map({Double($0)!})
    let lowerBound = input[0].squareRoot()
    let upperBound = input[1].squareRoot()
    var difference = Int()
    if (floor(lowerBound) == lowerBound) {
        if (floor(upperBound) == upperBound) {
            difference = Int(upperBound - lowerBound) + 1
        } else {
            difference = Int(ceil(upperBound - lowerBound))
        }
    } else if (floor(upperBound) == upperBound) {
        difference = Int(ceil(upperBound - lowerBound))
    } else {
        difference = Int(floor(upperBound) - floor(lowerBound))
    }
    output.append(difference)
}

// Print the output
for number in output {
    print(number)
}
