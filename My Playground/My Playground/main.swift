//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read K
let k = Int(String(readLine()!)!.components(separatedBy: " ")[1])!

// Read the array
let array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the array
var output = 0
for i in 0..<array.count-1 {
    for j in i+1..<array.count {
        if (array[i] + array[j]) % k == 0 {
            output += 1
        }
    }
}

// Print the output
print(output)
