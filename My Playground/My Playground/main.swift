//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read N (and ignore it, as it is not needed in this implementation)
_ = readLine()

// Read the scores
let birds = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the scores
var count = [0,0,0,0,0]
for bird in birds {
    count[bird-1] += 1
}
var output = 0
for type in 1...4 {
    if count[type] > count[output] {
        output = type
    }
}
output += 1 // Make up for the starting index difference (array starts at 0, bird types at 1)

// Print the output
print(output)
