//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let stones = Int(readLine()!)!

// Get the first stone
var stone: [Character] = Array(String(readLine()!)!.characters)
var gemElements = Set(stone)

// Process all other stones
for _ in 1..<stones {
  stone = Array(String(readLine()!)!.characters)
  gemElements = gemElements.intersection(stone)
}

// Print the output
print(gemElements.count)
