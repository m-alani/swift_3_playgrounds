//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let input = Array(String(readLine()!)!.lowercased().characters)

// Solve the mystery
var alphabet = Set("abcdefghijklmnopqrstuvwxyz".characters)
var output = "not pangram"
for letter in input {
  alphabet.remove(letter)
  if (alphabet.count == 0) {
    output = "pangram"
    break
  }
}

// Print the output
print(output)
