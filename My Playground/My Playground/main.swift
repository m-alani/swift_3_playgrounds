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
var output = [Character]()
for i in 0..<input.count {
  switch input[i] {
  case 65...90:
    output.append(Character(UnicodeScalar((((Int(input[i]) - 65) + cipher ) % 26) + 65)!))
  case 97...122:
    output.append(Character(UnicodeScalar((((Int(input[i]) - 97) + cipher ) % 26) + 97)!))
  default:
    output.append(Character(UnicodeScalar(input[i])!))
  }
}

// Print the output
print(String(output))
