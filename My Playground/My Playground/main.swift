//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
let cases = Int(readLine()!)!

// Read and solve each case
var output = [Int]()
for _ in 1...cases {
  var cycles = Int(readLine()!)!
  var height = 1
  var spring = true
  while (cycles > 0) {
    height = (spring) ? height * 2 : height + 1
    spring = !spring
    cycles -= 1
  }
  output.append(height)
}

// Print output
for tree in output {
  print(tree)
}
