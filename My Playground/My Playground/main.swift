//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let queries = Int(readLine()!)!

// Use magic to solve this query
var output = [String]()
let hr = Array("hackerrank".characters)
for _ in 1...queries {
  let input = Array(String(readLine()!)!.lowercased().characters)
  var idx = 0, inputIdx = 0
  while (inputIdx < input.count && idx < 10) {
    if (input[inputIdx] == hr[idx]) {
      idx += 1
    }
    inputIdx += 1
  }
  output.append((idx == 10) ? "YES" : "NO")
}

// Print output
for line in output {
  print(line)
}



