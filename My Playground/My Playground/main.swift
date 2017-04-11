//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
let queries = Int(readLine()!)!

// Process the queries
var output = [String]()
for _ in 1...queries {
  _ = readLine()
  var array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  var unswappable = false   // Flag to break out when we can't perform a swap
  var sorted = false        // Flag to break out if a single search cycle is completed with no swaps (the array is sorted already)
  main:for i in 1...array.count {
    var j = array.count - i
    sorted = true
    while (j > 0) {
      if (array[j] < array[j-1]) {
        if (abs(array[j] - array[j-1]) > 1) {
          unswappable = true
          break main
        } else {
          swap(&array[j], &array[j-1])
          sorted = false
        }
      }
      j -= 1
    }
    if (sorted) {
      break main
    }
  }
  output.append((unswappable) ? "No" : "Yes")
}

// Print the output
for answer in output {
  print(answer)
}
