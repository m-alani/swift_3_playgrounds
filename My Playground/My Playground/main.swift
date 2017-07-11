//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the number of cases
let cases = Int(readLine()!)!

// Process each case
var output = [Int]()
for _ in 1...cases {
  let numberStr = String(readLine()!)!
  let number = Int(numberStr)!
  var count = 0, iterator = number
  while (iterator > 0) {
    let current = iterator % 10
    iterator /= 10
    if (current != 0 && number % current == 0) { count += 1 }
  }
  output.append(count)
}

// print the output
for number in output {
  print(number)
}
