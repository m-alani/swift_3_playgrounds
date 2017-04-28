//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read input
var str = Array(String(readLine()!)!.characters)

// Process the case
var idx = 0
while (!str.isEmpty && idx < str.count - 1) {
  if (str[idx] == str[idx+1]) {
    str.removeSubrange(idx...idx+1)
    idx = (idx == 0) ? 0 : idx - 1
  } else {
    idx += 1
  }
}
let output = (str.count > 0) ? String(str) : "Empty String"

// Print the output
print(output)

