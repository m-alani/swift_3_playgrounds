//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read the input
_ = readLine()
let input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Find & print the output
for i in 0..<input.count {
  print(input.index(of: input.index(of: (i+1))! + 1)! + 1)
}
