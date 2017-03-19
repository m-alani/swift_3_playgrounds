//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
let inputLine = String(readLine()!)!

// Prepare variables
let input = Array(inputLine.characters)
let length = input.count
let outputLength = length + Int(Double(length).squareRoot())
let rowLength = Int(ceil(Double(length).squareRoot()))
var output = [Character]()
var index = 0
var column = 0

// Generate the output as a Character array
while (output.count < outputLength) {
    output.append(input[index])
    index += rowLength
    if (index >= length) {
        column += 1
        index = column
        output.append(" ")
    }
}

// Print the output
print(String(output))
