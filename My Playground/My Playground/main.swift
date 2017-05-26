//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let word = Array(String(readLine()!)!.utf16)

// Find the area for that word
var height = 0
for letter in word {
  let toCompare = heights[Int(letter) - 97]
  height = (height < toCompare) ? toCompare : height
}
let output = word.count * height

// Print the output
print(output)



