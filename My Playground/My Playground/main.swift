//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
let input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the case
var output = 0
for i in input[0]...input[1] {
  let reversed = Int(String(String(i).characters.reversed()))!
  if (abs(i - reversed) % input[2] == 0) {
    output += 1
  }
}

// Print the output
print(output)
