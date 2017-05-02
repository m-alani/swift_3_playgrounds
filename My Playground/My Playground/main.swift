//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
_ = readLine()
var input = Array(String(readLine()!)!.utf16)
let cipher = Int(readLine()!)!

// Encrypt the characters
for i in 0..<input.count {
  switch input[i] {
  case 65...90:
    input[i] = input[i].advanced(by: cipher)
    print(Int(input[i]))
  default: break
  }
}

// Print the output
let output = String(utf16CodeUnits: input, count: input.count)
print(output)
