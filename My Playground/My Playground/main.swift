//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Get the input
let nk = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Go through the hurdles
var output = 0
for height in heights {
  output = (height - nk[1] > output) ? height - nk[1] : output
}

// Print the output
print(output)
