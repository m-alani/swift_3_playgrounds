//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get no. of cases
let cases = Int(readLine()!)!
var output = [String]()

// Process the cases
for _ in 0..<cases {
  let minStudents = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
  let arrivals = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  var onTime = 0
  for arrival in arrivals {
    if (arrival < 1) {
      onTime += 1
    }
  }
  output.append((onTime < minStudents) ? "YES" : "NO")
}

// Print the output
for line in output {
  print(line)
}
