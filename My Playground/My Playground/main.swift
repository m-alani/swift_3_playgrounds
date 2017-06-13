//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read N
let days = Int(readLine()!)!

// Find the number of likes
var base = 2
var likes = 2
for _ in 1..<days {
  base = (base * 3) / 2
  likes += base
}

// Print the output
print(likes)
