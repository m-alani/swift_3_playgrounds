//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the number of test cases
let cases = Int(readLine()!)!

// Go case by case
var output = [Int]()
for _ in 1...cases {
  let inputArr = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  let prisoners = inputArr[0], startIndex = inputArr[2]
  let sweets = (inputArr[1] % prisoners) - 1
  output.append(((sweets + startIndex) % prisoners) == 0 ? prisoners : ((sweets + startIndex) % prisoners))
}

// Print the output
for line in output {
  print(line)
}
