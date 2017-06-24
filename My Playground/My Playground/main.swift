//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17. <== That's when this ritual started!
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
var input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the queries
let queries = input[2]
let shift = input[1] % array.count
var output = [Int]()
for _ in 0..<queries {
  var index = Int(readLine()!)! - shift
  if (index < 0) {
    index += array.count
  }
  output.append(array[index])
}

// Print the output
for line in output {
  print(line)
}
