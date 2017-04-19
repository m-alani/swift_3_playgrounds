//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
_ = readLine()
let numbers = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted()

// Process the array of numbers
var output = 1
for i in 0..<numbers.count {
  var j = i, count = 0
  while (j < numbers.count && abs(numbers[j] - numbers[i]) < 2) {
    count += 1
    j += 1
  }
  output = max(output, count)
}

// Print the output
print(output)
