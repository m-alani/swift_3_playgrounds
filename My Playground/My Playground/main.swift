//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read Q
let queries = Int(readLine()!)!

// Process the queries one by one
var output = [String]()
for _ in 1...queries {
    let positions = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    if (abs(positions[0] - positions[2]) == abs(positions[1] - positions[2])) {
        output.append("Mouse C")
    } else {
        output.append(abs(positions[0] - positions[2]) < abs(positions[1] - positions[2]) ? "Cat A" : "Cat B")
    }
}

// Print the output
for line in output {
    print(line)
}
