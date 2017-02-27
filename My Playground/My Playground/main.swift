//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read N & K as Strings
var inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into integers
let inputInt: [Int] = inputString.map({Int($0) ?? 0})
let N = inputInt[0]
let K = inputInt[1]

// Read the N integers as String
inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into integers
let input = Set(inputString.map({Int($0) ?? 0}))

// Process the input
var output = 0
for number in input {
    if input.contains(number - K) {
        output += 1
    }
}

// Print the output
print(output)
