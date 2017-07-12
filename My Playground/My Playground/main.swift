//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
let shift = Int(String(readLine()!)!.components(separatedBy: " ")[1])!
let numbers = String(readLine()!)!.components(separatedBy: " ")

// Generate the shifted output
var output = numbers[shift % numbers.count]
for index in 1..<numbers.count {
  output = output + " " + numbers[(index + shift) % numbers.count]
}

// Print the output
print(output)


