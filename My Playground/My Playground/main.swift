//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Helper function to test a specific index
func checkIndex(m: Int, d: Int, arr: [Int], idx: Int) -> Bool {
  var sum = 0
  for i in idx..<idx + m {
    sum += arr[i]
  }
  return sum == d
}

// Read input
_ = readLine()
let bar = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let temp = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let d = temp[0], m = temp[1]

// Process the case
var output = 0
let maxIdx = (bar.count == 1) ? 1 : bar.count - m + 1
for idx in 0..<maxIdx {
  if checkIndex(m: m, d: d, arr: bar, idx: idx) {
    output += 1
  }
}

// Print the output
print(output)
