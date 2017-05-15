//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let cases = Int(readLine()!)!

// Solve the cases
var output = [UInt]()
for _ in 1...cases {
  output.append(4294967295 - UInt(readLine()!)!)
}

// Print the output
for line in output {
  print(line)
}
