//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Reading the number of test cases
let cases = Int(readLine() ?? "0") ?? 0

// Processing the test cases
for _ in 0..<cases {
  var output = "NO"
  var left = 0
  // The number of elements in the array doesn't matter in our implementation, but we need to clear that line from the input buffer
  let caseLength = Int(readLine() ?? "0") ?? 0
  // Read the test case into an array of strings (Swift readline() limitation)
  let inputString = String(readLine() ?? "")!.components(separatedBy: " ")
  // Convert the strings into an array of integers
  let input = inputString.map({Int($0) ?? 0})
  // Find the sum of the array
  let sum = input.reduce(0, {$0 + $1})
  // Process the array to find the requested index where the sum of its left is equal to the sum of its right (if any)
  for number in input {
    if ((sum-number)/2 == left) {
      output = "YES"
      break
    } else {
      left += number
    }
  }
  // Print the output for this test case
  print(output)
}
