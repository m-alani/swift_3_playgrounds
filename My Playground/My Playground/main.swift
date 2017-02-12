//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read n
let n = Int(readLine() ?? "0")!

// Read the array
var numbers = String((readLine() ?? "0")!).components(separatedBy: " ").map({Int($0) ?? 0}).sorted()

// Process the output
var numberOfCuts = numbers.count
while numberOfCuts != 0 {
    print(numberOfCuts)
    let deletedNumber = numbers.removeFirst()
    while numbers.first ?? deletedNumber + 1 == deletedNumber {
        numbers.removeFirst()
    }
    numberOfCuts = numbers.count
}
