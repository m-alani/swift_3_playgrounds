//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read S & T
var inputLine = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let houseStart = inputLine[0]
let houseEnd = inputLine[1]

// Read A & B
inputLine = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let appleTree = inputLine[0]
let orangeTree = inputLine[1]

// Read M & N and ignore the values (not needed in our implementation)
_ = readLine()

// Read apples & oranges arrays
let apples = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let oranges = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the cases and print the output
print(apples.filter({$0 + appleTree <= houseEnd && $0 + appleTree >= houseStart}).count)
print(oranges.filter({$0 + orangeTree <= houseEnd && $0 + orangeTree >= houseStart}).count)

