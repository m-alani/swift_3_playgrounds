//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read (and ignore) N
_ = readLine()

// Read the candles heights
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the case
var output = 0
var max = heights[0]
for height in heights {
    if height > max {
        max = height
        output = 1
    } else if height == max {
        output += 1
    }
}

// Print the output
print(output)
