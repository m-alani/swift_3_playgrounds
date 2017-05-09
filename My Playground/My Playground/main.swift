//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
var input = String(readLine()!)!.characters

// Process the string
var output = 0, subIdx = 1
for char in input {
  if (subIdx == 2) {
    if (char != "O") {
      output += 1
    }
  } else {
    if (char != "S") {
      output += 1
    }
  }
  subIdx = (subIdx == 3) ? 1 : subIdx + 1
}

// Print the output
print(output)


