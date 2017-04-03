//
//  main.swift
//  My Playground
//
//  Created by Marwan Alani on 2017-01-17.
//  Copyright © 2017 Marwan Alani. All rights reserved.
//

import Foundation

// Read N (and ignore it) & the steps
_ = readLine()
let steps = String(readLine()!)!.characters

// Process the hike
var alt = 0, valleyPoints = 0
for step in steps {
    if (step == "U") {
        alt += 1
        if (alt == 0) { valleyPoints += 1 }
    } else {
        alt -= 1
        if (alt == -1) { valleyPoints += 1 }
    }
}

// Print the output
print(valleyPoints / 2)
